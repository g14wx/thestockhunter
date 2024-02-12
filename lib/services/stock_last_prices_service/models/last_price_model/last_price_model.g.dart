// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LastPriceModelImpl _$$LastPriceModelImplFromJson(Map<String, dynamic> json) => _$LastPriceModelImpl(
      data: (json['data'] as List<dynamic>).map((e) => TradeData.fromJson(e as Map<String, dynamic>)).toList(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$LastPriceModelImplToJson(_$LastPriceModelImpl instance) => <String, dynamic>{
      'data': instance.data,
      'type': instance.type,
    };

_$TradeDataImpl _$$TradeDataImplFromJson(Map<String, dynamic> json) => _$TradeDataImpl(
      lastPrice: (json['p'] as num).toDouble(),
      symbol: json['s'] as String,
      unixMillisecondsTimestamp: (json['t'] as num).toDouble(),
      volume: (json['v'] as num).toDouble(),
    );

Map<String, dynamic> _$$TradeDataImplToJson(_$TradeDataImpl instance) => <String, dynamic>{
      'p': instance.lastPrice,
      's': instance.symbol,
      't': instance.unixMillisecondsTimestamp,
      'v': instance.volume,
    };
