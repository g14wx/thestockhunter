// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'symbol_model.g.dart';

part 'symbol_model.freezed.dart';

@freezed
class RootSymbolModelResponse with _$RootSymbolModelResponse {
  const factory RootSymbolModelResponse({
    required int count,
    required List<SymbolModel> result,
  }) = _RootSymbolModelResponse;
  factory RootSymbolModelResponse.fromJson(Map<String, dynamic> json) => _$RootSymbolModelResponseFromJson(json);
}

@freezed
class SymbolModel with _$SymbolModel {
  const factory SymbolModel(
      {String? currency,
      required String description,
      required String displaySymbol,
      required String symbol,
      double? priceAlertFromUser}) = _SymbolModel;

  factory SymbolModel.fromJson(Map<String, dynamic> json) => _$SymbolModelFromJson(json);
}
