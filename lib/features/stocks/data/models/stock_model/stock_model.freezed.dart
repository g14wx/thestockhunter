// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StockModel _$StockModelFromJson(Map<String, dynamic> json) {
  return _StockModel.fromJson(json);
}

/// @nodoc
mixin _$StockModel {
  @JsonKey(name: "s")
  String get tickerSymbol => throw _privateConstructorUsedError;
  @JsonKey(name: "c")
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "h")
  double get highPriceDay => throw _privateConstructorUsedError;
  @JsonKey(name: "l")
  double get lowPriceDay => throw _privateConstructorUsedError;
  @JsonKey(name: "o")
  double get openPriceDay => throw _privateConstructorUsedError;
  @JsonKey(name: "pc")
  double get previousClosePrice => throw _privateConstructorUsedError;
  @BullBearConditionConverter()
  BullBearCondition get bullBearCondition => throw _privateConstructorUsedError;
  @JsonKey(name: "t")
  int get requestUnixTimestampSeconds => throw _privateConstructorUsedError;
  DateTime get requestDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockModelCopyWith<StockModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockModelCopyWith<$Res> {
  factory $StockModelCopyWith(StockModel value, $Res Function(StockModel) then) =
      _$StockModelCopyWithImpl<$Res, StockModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "s") String tickerSymbol,
      @JsonKey(name: "c") double currentPrice,
      @JsonKey(name: "h") double highPriceDay,
      @JsonKey(name: "l") double lowPriceDay,
      @JsonKey(name: "o") double openPriceDay,
      @JsonKey(name: "pc") double previousClosePrice,
      @BullBearConditionConverter() BullBearCondition bullBearCondition,
      @JsonKey(name: "t") int requestUnixTimestampSeconds,
      DateTime requestDateTime});
}

/// @nodoc
class _$StockModelCopyWithImpl<$Res, $Val extends StockModel> implements $StockModelCopyWith<$Res> {
  _$StockModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickerSymbol = null,
    Object? currentPrice = null,
    Object? highPriceDay = null,
    Object? lowPriceDay = null,
    Object? openPriceDay = null,
    Object? previousClosePrice = null,
    Object? bullBearCondition = null,
    Object? requestUnixTimestampSeconds = null,
    Object? requestDateTime = null,
  }) {
    return _then(_value.copyWith(
      tickerSymbol: null == tickerSymbol
          ? _value.tickerSymbol
          : tickerSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      highPriceDay: null == highPriceDay
          ? _value.highPriceDay
          : highPriceDay // ignore: cast_nullable_to_non_nullable
              as double,
      lowPriceDay: null == lowPriceDay
          ? _value.lowPriceDay
          : lowPriceDay // ignore: cast_nullable_to_non_nullable
              as double,
      openPriceDay: null == openPriceDay
          ? _value.openPriceDay
          : openPriceDay // ignore: cast_nullable_to_non_nullable
              as double,
      previousClosePrice: null == previousClosePrice
          ? _value.previousClosePrice
          : previousClosePrice // ignore: cast_nullable_to_non_nullable
              as double,
      bullBearCondition: null == bullBearCondition
          ? _value.bullBearCondition
          : bullBearCondition // ignore: cast_nullable_to_non_nullable
              as BullBearCondition,
      requestUnixTimestampSeconds: null == requestUnixTimestampSeconds
          ? _value.requestUnixTimestampSeconds
          : requestUnixTimestampSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      requestDateTime: null == requestDateTime
          ? _value.requestDateTime
          : requestDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockModelImplCopyWith<$Res> implements $StockModelCopyWith<$Res> {
  factory _$$StockModelImplCopyWith(_$StockModelImpl value, $Res Function(_$StockModelImpl) then) =
      __$$StockModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "s") String tickerSymbol,
      @JsonKey(name: "c") double currentPrice,
      @JsonKey(name: "h") double highPriceDay,
      @JsonKey(name: "l") double lowPriceDay,
      @JsonKey(name: "o") double openPriceDay,
      @JsonKey(name: "pc") double previousClosePrice,
      @BullBearConditionConverter() BullBearCondition bullBearCondition,
      @JsonKey(name: "t") int requestUnixTimestampSeconds,
      DateTime requestDateTime});
}

/// @nodoc
class __$$StockModelImplCopyWithImpl<$Res> extends _$StockModelCopyWithImpl<$Res, _$StockModelImpl>
    implements _$$StockModelImplCopyWith<$Res> {
  __$$StockModelImplCopyWithImpl(_$StockModelImpl _value, $Res Function(_$StockModelImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickerSymbol = null,
    Object? currentPrice = null,
    Object? highPriceDay = null,
    Object? lowPriceDay = null,
    Object? openPriceDay = null,
    Object? previousClosePrice = null,
    Object? bullBearCondition = null,
    Object? requestUnixTimestampSeconds = null,
    Object? requestDateTime = null,
  }) {
    return _then(_$StockModelImpl(
      tickerSymbol: null == tickerSymbol
          ? _value.tickerSymbol
          : tickerSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      highPriceDay: null == highPriceDay
          ? _value.highPriceDay
          : highPriceDay // ignore: cast_nullable_to_non_nullable
              as double,
      lowPriceDay: null == lowPriceDay
          ? _value.lowPriceDay
          : lowPriceDay // ignore: cast_nullable_to_non_nullable
              as double,
      openPriceDay: null == openPriceDay
          ? _value.openPriceDay
          : openPriceDay // ignore: cast_nullable_to_non_nullable
              as double,
      previousClosePrice: null == previousClosePrice
          ? _value.previousClosePrice
          : previousClosePrice // ignore: cast_nullable_to_non_nullable
              as double,
      bullBearCondition: null == bullBearCondition
          ? _value.bullBearCondition
          : bullBearCondition // ignore: cast_nullable_to_non_nullable
              as BullBearCondition,
      requestUnixTimestampSeconds: null == requestUnixTimestampSeconds
          ? _value.requestUnixTimestampSeconds
          : requestUnixTimestampSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      requestDateTime: null == requestDateTime
          ? _value.requestDateTime
          : requestDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockModelImpl implements _StockModel {
  const _$StockModelImpl(
      {@JsonKey(name: "s") required this.tickerSymbol,
      @JsonKey(name: "c") required this.currentPrice,
      @JsonKey(name: "h") required this.highPriceDay,
      @JsonKey(name: "l") required this.lowPriceDay,
      @JsonKey(name: "o") required this.openPriceDay,
      @JsonKey(name: "pc") required this.previousClosePrice,
      @BullBearConditionConverter() required this.bullBearCondition,
      @JsonKey(name: "t") required this.requestUnixTimestampSeconds,
      required this.requestDateTime});

  factory _$StockModelImpl.fromJson(Map<String, dynamic> json) => _$$StockModelImplFromJson(json);

  @override
  @JsonKey(name: "s")
  final String tickerSymbol;
  @override
  @JsonKey(name: "c")
  final double currentPrice;
  @override
  @JsonKey(name: "h")
  final double highPriceDay;
  @override
  @JsonKey(name: "l")
  final double lowPriceDay;
  @override
  @JsonKey(name: "o")
  final double openPriceDay;
  @override
  @JsonKey(name: "pc")
  final double previousClosePrice;
  @override
  @BullBearConditionConverter()
  final BullBearCondition bullBearCondition;
  @override
  @JsonKey(name: "t")
  final int requestUnixTimestampSeconds;
  @override
  final DateTime requestDateTime;

  @override
  String toString() {
    return 'StockModel(tickerSymbol: $tickerSymbol, currentPrice: $currentPrice, highPriceDay: $highPriceDay, lowPriceDay: $lowPriceDay, openPriceDay: $openPriceDay, previousClosePrice: $previousClosePrice, bullBearCondition: $bullBearCondition, requestUnixTimestampSeconds: $requestUnixTimestampSeconds, requestDateTime: $requestDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockModelImpl &&
            (identical(other.tickerSymbol, tickerSymbol) || other.tickerSymbol == tickerSymbol) &&
            (identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice) &&
            (identical(other.highPriceDay, highPriceDay) || other.highPriceDay == highPriceDay) &&
            (identical(other.lowPriceDay, lowPriceDay) || other.lowPriceDay == lowPriceDay) &&
            (identical(other.openPriceDay, openPriceDay) || other.openPriceDay == openPriceDay) &&
            (identical(other.previousClosePrice, previousClosePrice) ||
                other.previousClosePrice == previousClosePrice) &&
            (identical(other.bullBearCondition, bullBearCondition) || other.bullBearCondition == bullBearCondition) &&
            (identical(other.requestUnixTimestampSeconds, requestUnixTimestampSeconds) ||
                other.requestUnixTimestampSeconds == requestUnixTimestampSeconds) &&
            (identical(other.requestDateTime, requestDateTime) || other.requestDateTime == requestDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tickerSymbol, currentPrice, highPriceDay, lowPriceDay, openPriceDay,
      previousClosePrice, bullBearCondition, requestUnixTimestampSeconds, requestDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith =>
      __$$StockModelImplCopyWithImpl<_$StockModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockModelImplToJson(
      this,
    );
  }
}

abstract class _StockModel implements StockModel {
  const factory _StockModel(
      {@JsonKey(name: "s") required final String tickerSymbol,
      @JsonKey(name: "c") required final double currentPrice,
      @JsonKey(name: "h") required final double highPriceDay,
      @JsonKey(name: "l") required final double lowPriceDay,
      @JsonKey(name: "o") required final double openPriceDay,
      @JsonKey(name: "pc") required final double previousClosePrice,
      @BullBearConditionConverter() required final BullBearCondition bullBearCondition,
      @JsonKey(name: "t") required final int requestUnixTimestampSeconds,
      required final DateTime requestDateTime}) = _$StockModelImpl;

  factory _StockModel.fromJson(Map<String, dynamic> json) = _$StockModelImpl.fromJson;

  @override
  @JsonKey(name: "s")
  String get tickerSymbol;
  @override
  @JsonKey(name: "c")
  double get currentPrice;
  @override
  @JsonKey(name: "h")
  double get highPriceDay;
  @override
  @JsonKey(name: "l")
  double get lowPriceDay;
  @override
  @JsonKey(name: "o")
  double get openPriceDay;
  @override
  @JsonKey(name: "pc")
  double get previousClosePrice;
  @override
  @BullBearConditionConverter()
  BullBearCondition get bullBearCondition;
  @override
  @JsonKey(name: "t")
  int get requestUnixTimestampSeconds;
  @override
  DateTime get requestDateTime;
  @override
  @JsonKey(ignore: true)
  _$$StockModelImplCopyWith<_$StockModelImpl> get copyWith => throw _privateConstructorUsedError;
}
