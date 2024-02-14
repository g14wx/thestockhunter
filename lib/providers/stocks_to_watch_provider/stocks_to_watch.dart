import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/features/stocks/data/models/symbol_model/symbol_model.dart';
import 'package:thestuckhunter/providers/stocks_to_watch_provider/models/local_stock_models.dart';

part 'stocks_to_watch.g.dart';

@Riverpod(keepAlive: true)
class StocksToWatch extends _$StocksToWatch {
  @override
  LocalStockModels build() {
    return const LocalStockModels(stocks: [
      SymbolModel(description: "21SHARES BINANCE COIN ETP", displaySymbol: "BINANCE:BTCUSDT", symbol: "BINANCE:BTCUSDT")
    ]);
  }

  void setNewStock({required SymbolModel newSymbolModel}) {
    state = state.copyWith(stocks: [...state.stocks, newSymbolModel]);
  }

  void removeStock({required int symbolAlertIndex}) {
    final tempList = [...state.stocks];
    if (tempList.isNotEmpty) {
      tempList.removeAt(symbolAlertIndex);
      state = state.copyWith(stocks: [...tempList]);
    }
  }

  void setAlertToStock({required int indexSymbol, required double priceAlert}) {
    final tempList = [...state.stocks];
    if (tempList.isNotEmpty) {
      final symbolModelToAddAlert = tempList.elementAt(indexSymbol);
      final modifiedSymbolModel = symbolModelToAddAlert.copyWith(priceAlertFromUser: priceAlert);
      tempList.removeAt(indexSymbol);
      tempList.add(modifiedSymbolModel);
      state = state.copyWith(stocks: [...tempList]);
    }
  }

  void setStocks({required List<SymbolModel> symbolModels}) => state = state.copyWith(stocks: symbolModels);
}
