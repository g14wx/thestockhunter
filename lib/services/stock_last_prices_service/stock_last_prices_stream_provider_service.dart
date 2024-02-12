import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/env/env.dart';

import 'package:thestuckhunter/services/stock_last_prices_service/models/last_price_model/last_price_model.dart';

part 'stock_last_prices_stream_provider_service.g.dart';

@Riverpod(keepAlive: true)
class StockLastPricesStreamProviderService extends _$StockLastPricesStreamProviderService {
  StockLastPricesStreamProviderService() {
    _initWebSocketConnection();
  }

  StreamController<String> streamController = StreamController.broadcast(sync: true);
  late WebSocket channel;

  @override
  Stream<LastPriceModel> build() async* {
    yield* streamController.stream.map((event) {
      try {
        final rawJson = jsonDecode(event);
        final json = rawJson as Map<String, dynamic>;
        return LastPriceModel.fromJson(json);
      } catch (e) {
        return const LastPriceModel(data: [], type: "welcomeData");
      }
    });
  }

  _initWebSocketConnection() async {
    debugPrint("conecting...");
    channel = await connectWs();
    debugPrint("socket connection initialized");
    broadcastNotifications();
  }

  broadcastNotifications() {
    channel.done.then((dynamic _) => _onDisconnected());
    setNewSymbol(symbol: "BINANCE:BTCUSDT");
    channel.listen((streamData) {
      streamController.add(streamData);
    }, onDone: () {
      debugPrint("conecting aborted");
      _initWebSocketConnection();
    }, onError: (e) {
      debugPrint('Server error: $e');
      _initWebSocketConnection();
    });
  }

  connectWs() async {
    try {
      Random r = Random();
      String key = base64.encode(List<int>.generate(8, (_) => r.nextInt(256)));

      HttpClient client = HttpClient();
      HttpClientRequest request =
          await client.getUrl(Uri.https(Env.socketFinnLastPrices, '', {"token": Env.finnHubApiKey}));
      request.headers.add('Connection', 'upgrade');
      request.headers.add('Upgrade', 'websocket');
      request.headers.add('sec-websocket-version', '13');
      request.headers.add('sec-websocket-key', key);

      HttpClientResponse response = await request.close();
      // todo check the status code, key etc
      Socket socket = await response.detachSocket();

      return WebSocket.fromUpgradedSocket(
        socket,
        serverSide: false,
      );
    } catch (e) {
      debugPrint("Error! can not connect WS connectWs $e");
      await Future.delayed(const Duration(milliseconds: 10000));
      return await connectWs();
    }
  }

  void setNewSymbol({required String symbol}) {
    final jsonString = jsonEncode({"type": "subscribe", "symbol": symbol});
    channel.add(jsonString);
  }

  void _onDisconnected() {
    _initWebSocketConnection();
  }
}
