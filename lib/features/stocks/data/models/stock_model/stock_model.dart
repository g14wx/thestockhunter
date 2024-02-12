// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thestuckhunter/features/stocks/data/constants/bull_bear_condition.dart';

part 'stock_model.freezed.dart';

part 'stock_model.g.dart';

@freezed
class StockModel with _$StockModel {
  const factory StockModel(
      {@JsonKey(name: "s") required String tickerSymbol,
      @JsonKey(name: "c") required double currentPrice,
      @JsonKey(name: "h") required double highPriceDay,
      @JsonKey(name: "l") required double lowPriceDay,
      @JsonKey(name: "o") required double openPriceDay,
      @JsonKey(name: "pc") required double previousClosePrice,
      @BullBearConditionConverter() required BullBearCondition bullBearCondition,
      @JsonKey(name: "t") required int requestUnixTimestampSeconds,
      required DateTime requestDateTime}) = _StockModel;

  factory StockModel.fromJson(Map<String, dynamic> json) => _$StockModelFromJson(json);
}

class BullBearConditionConverter implements JsonConverter<BullBearCondition, dynamic> {
  const BullBearConditionConverter();

  @override
  BullBearCondition fromJson(dynamic json) {
    final Map<String, dynamic> jsonObject = json as Map<String, dynamic>;
    if (jsonObject["currentPrice"] > jsonObject["currentPrice"]) {
      return BullBearCondition.bull;
    } else if (jsonObject["currentPrice"] < jsonObject["currentPrice"]) {
      return BullBearCondition.bear;
    } else {
      return BullBearCondition.neutral;
    }
  }

  @override
  dynamic toJson(BullBearCondition object) {
    return object;
  }
}
