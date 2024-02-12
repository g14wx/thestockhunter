import 'dart:async';

import 'package:dio/dio.dart';
import 'package:thestuckhunter/features/stocks/data/models/symbol_model/symbol_model.dart';
import 'package:thestuckhunter/providers/dio_provider/dio_provider/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/env/env.dart';
import 'package:thestuckhunter/utils/cancel_token_ref.dart';

part 'stocks_repository.g.dart';

class StocksRepository {
  late final String token;

  StocksRepository({required this.client}) {
    token = Env.finnHubApiKey;
  }

  final Dio client;

  Future<RootSymbolModelResponse> searchStockBySymbol({required String symbol, CancelToken? cancelToken}) async {
    final url = Uri(
        scheme: 'https',
        host: Env.baseFinnHubApiUrl,
        path: "${Env.pathPrefixApi}${Env.pathApiVersion}${Env.pathSearchSymbols}",
        queryParameters: {"q": symbol, "token": token}).toString();
    final response = await client.get(url, cancelToken: cancelToken);
    final json = response.data as Map<String, dynamic>;
    return RootSymbolModelResponse.fromJson(json);
  }

  Future<List<SymbolModel>> getSymbols({CancelToken? cancelToken}) async {
    final url = Uri(
      scheme: 'https',
      host: Env.baseFinnHubApiUrl,
      path: "${Env.pathPrefixApi}${Env.pathApiVersion}${Env.pathGetSymbolsFinnHub}?exchange=USD&token=$token",
    ).toString();
    final response = await client.get(url, cancelToken: cancelToken);
    return _getParsedListOfSymbolModels(response: response);
  }

  List<SymbolModel> _getParsedListOfSymbolModels({required Response<dynamic> response}) {
    final listOfSymbols = response.data as List;
    final parsedListJsonObjects = listOfSymbols as List<Map<String, dynamic>>;
    return parsedListJsonObjects.map((json) => SymbolModel.fromJson(json)).toList();
  }
}

@riverpod
StocksRepository stocksRepository(StocksRepositoryRef ref) => StocksRepository(client: ref.watch(dioProvider));

class AbortedException implements Exception {}

@riverpod
Future<RootSymbolModelResponse> getSymbol(
  GetSymbolRef ref, {
  required String symbol,
}) {
  final cancelToken = ref.cancelToken();
  return ref.watch(stocksRepositoryProvider).searchStockBySymbol(symbol: symbol, cancelToken: cancelToken);
}

@riverpod
Future<List<SymbolModel>> symbols(SymbolsRef ref) {
  final cancelToken = ref.cancelToken();
  return ref.watch(stocksRepositoryProvider).getSymbols(cancelToken: cancelToken);
}
