// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockModelImpl _$$StockModelImplFromJson(Map<String, dynamic> json) => _$StockModelImpl(
      tickerSymbol: json['s'] as String,
      currentPrice: (json['c'] as num).toDouble(),
      highPriceDay: (json['h'] as num).toDouble(),
      lowPriceDay: (json['l'] as num).toDouble(),
      openPriceDay: (json['o'] as num).toDouble(),
      previousClosePrice: (json['pc'] as num).toDouble(),
      bullBearCondition: const BullBearConditionConverter().fromJson(json['bullBearCondition']),
      requestUnixTimestampSeconds: json['t'] as int,
      requestDateTime: DateTime.parse(json['requestDateTime'] as String),
    );

Map<String, dynamic> _$$StockModelImplToJson(_$StockModelImpl instance) => <String, dynamic>{
      's': instance.tickerSymbol,
      'c': instance.currentPrice,
      'h': instance.highPriceDay,
      'l': instance.lowPriceDay,
      'o': instance.openPriceDay,
      'pc': instance.previousClosePrice,
      'bullBearCondition': const BullBearConditionConverter().toJson(instance.bullBearCondition),
      't': instance.requestUnixTimestampSeconds,
      'requestDateTime': instance.requestDateTime.toIso8601String(),
    };
