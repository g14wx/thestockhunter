// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestuckhunter/features/stocks/data/models/symbol_model/symbol_model.dart';

part 'local_stock_models.freezed.dart';

@freezed
class LocalStockModels with _$LocalStockModels {
  const factory LocalStockModels({
    @Default([]) List<SymbolModel> stocks,
  }) = _LocalStockModels;
}
