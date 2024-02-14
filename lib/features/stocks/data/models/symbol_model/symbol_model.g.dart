// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RootSymbolModelResponseImpl _$$RootSymbolModelResponseImplFromJson(Map<String, dynamic> json) =>
    _$RootSymbolModelResponseImpl(
      count: json['count'] as int,
      result: (json['result'] as List<dynamic>).map((e) => SymbolModel.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$RootSymbolModelResponseImplToJson(_$RootSymbolModelResponseImpl instance) => <String, dynamic>{
      'count': instance.count,
      'result': instance.result,
    };

_$SymbolModelImpl _$$SymbolModelImplFromJson(Map<String, dynamic> json) => _$SymbolModelImpl(
      currency: json['currency'] as String?,
      description: json['description'] as String,
      displaySymbol: json['displaySymbol'] as String,
      symbol: json['symbol'] as String,
      priceAlertFromUser: (json['priceAlertFromUser'] as num?)?.toDouble(),
      lastPriceCache: (json['lastPriceCache'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SymbolModelImplToJson(_$SymbolModelImpl instance) => <String, dynamic>{
      'currency': instance.currency,
      'description': instance.description,
      'displaySymbol': instance.displaySymbol,
      'symbol': instance.symbol,
      'priceAlertFromUser': instance.priceAlertFromUser,
      'lastPriceCache': instance.lastPriceCache,
    };
