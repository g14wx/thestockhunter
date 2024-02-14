import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/features/stocks/data/models/symbol_model/symbol_model.dart';
import 'package:thestuckhunter/providers/stocks_to_watch_provider/stocks_to_watch.dart';
import 'package:thestuckhunter/services/stock_last_prices_service/stock_last_prices_stream_provider_service.dart';

part 'real_time_stocks_controller.g.dart';

@Riverpod(keepAlive: true)
class RealTimeStocksController extends _$RealTimeStocksController {
  StreamController<List<SymbolModel>> streamController = StreamController.broadcast(sync: true);

  @override
  Stream<List<SymbolModel>> build() async* {
    _startListening();
    if (streamController.isClosed) {
      streamController = StreamController.broadcast(sync: true);
    }
    yield* streamController.stream.map((event) {
      return event;
    });
  }

  _startListening() async {
    final last = ref.listen(
      stockLastPricesStreamProviderServiceProvider,
      (previous, next) async {
        final stocksToWatch = ref.watch(stocksToWatchProvider);
        if (next.value != null) {
          final lastPriceModel = next.value!;
          final List<SymbolModel> parsedSymbolsModels = stocksToWatch.stocks.map((stockData) {
            double? lastPrice;
            final realTimeStockData = lastPriceModel.data.where((element) => element.symbol == stockData.symbol);

            if (realTimeStockData.isNotEmpty) {
              final lastRealTimeStockData = realTimeStockData.last;
              // check if there is an alert
              if (stockData.priceAlertFromUser != null &&
                  lastRealTimeStockData.lastPrice >= stockData.priceAlertFromUser!) {
                // _showAlert(symbol: stockData.symbol, lastPriceStock: realTimeStockData.lastPrice, price: stockData.priceAlertFromUser!);
              }
              lastPrice = lastRealTimeStockData.lastPrice;
            }
            return stockData.copyWith(lastPriceCache: lastPrice ?? stockData.lastPriceCache);
          }).toList();
          streamController.add(parsedSymbolsModels);
        }
      },
    );

    debugPrint(last.toString());
  }
}
