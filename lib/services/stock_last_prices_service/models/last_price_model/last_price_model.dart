// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'last_price_model.freezed.dart';

part 'last_price_model.g.dart';

@freezed
class LastPriceModel with _$LastPriceModel {
  const factory LastPriceModel({
    required List<TradeData> data,
    required String type,
  }) = _LastPriceModel;

  factory LastPriceModel.fromJson(Map<String, dynamic> json) => _$LastPriceModelFromJson(json);
}

@freezed
class TradeData with _$TradeData {
  const factory TradeData({
    @JsonKey(name: "p") required double lastPrice,
    @JsonKey(name: "s") required String symbol,
    @JsonKey(name: "t") required double unixMillisecondsTimestamp,
    @JsonKey(name: "v") required double volume,
  }) = _TradeData;

  factory TradeData.fromJson(Map<String, dynamic> json) => _$TradeDataFromJson(json);
}
