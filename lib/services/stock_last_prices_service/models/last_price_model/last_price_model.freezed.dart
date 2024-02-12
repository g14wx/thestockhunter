// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_price_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LastPriceModel _$LastPriceModelFromJson(Map<String, dynamic> json) {
  return _LastPriceModel.fromJson(json);
}

/// @nodoc
mixin _$LastPriceModel {
  List<TradeData> get data => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastPriceModelCopyWith<LastPriceModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastPriceModelCopyWith<$Res> {
  factory $LastPriceModelCopyWith(LastPriceModel value, $Res Function(LastPriceModel) then) =
      _$LastPriceModelCopyWithImpl<$Res, LastPriceModel>;
  @useResult
  $Res call({List<TradeData> data, String type});
}

/// @nodoc
class _$LastPriceModelCopyWithImpl<$Res, $Val extends LastPriceModel> implements $LastPriceModelCopyWith<$Res> {
  _$LastPriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TradeData>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastPriceModelImplCopyWith<$Res> implements $LastPriceModelCopyWith<$Res> {
  factory _$$LastPriceModelImplCopyWith(_$LastPriceModelImpl value, $Res Function(_$LastPriceModelImpl) then) =
      __$$LastPriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TradeData> data, String type});
}

/// @nodoc
class __$$LastPriceModelImplCopyWithImpl<$Res> extends _$LastPriceModelCopyWithImpl<$Res, _$LastPriceModelImpl>
    implements _$$LastPriceModelImplCopyWith<$Res> {
  __$$LastPriceModelImplCopyWithImpl(_$LastPriceModelImpl _value, $Res Function(_$LastPriceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? type = null,
  }) {
    return _then(_$LastPriceModelImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TradeData>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastPriceModelImpl implements _LastPriceModel {
  const _$LastPriceModelImpl({required final List<TradeData> data, required this.type}) : _data = data;

  factory _$LastPriceModelImpl.fromJson(Map<String, dynamic> json) => _$$LastPriceModelImplFromJson(json);

  final List<TradeData> _data;
  @override
  List<TradeData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String type;

  @override
  String toString() {
    return 'LastPriceModel(data: $data, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastPriceModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_data), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastPriceModelImplCopyWith<_$LastPriceModelImpl> get copyWith =>
      __$$LastPriceModelImplCopyWithImpl<_$LastPriceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastPriceModelImplToJson(
      this,
    );
  }
}

abstract class _LastPriceModel implements LastPriceModel {
  const factory _LastPriceModel({required final List<TradeData> data, required final String type}) =
      _$LastPriceModelImpl;

  factory _LastPriceModel.fromJson(Map<String, dynamic> json) = _$LastPriceModelImpl.fromJson;

  @override
  List<TradeData> get data;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$LastPriceModelImplCopyWith<_$LastPriceModelImpl> get copyWith => throw _privateConstructorUsedError;
}

TradeData _$TradeDataFromJson(Map<String, dynamic> json) {
  return _TradeData.fromJson(json);
}

/// @nodoc
mixin _$TradeData {
  @JsonKey(name: "p")
  double get lastPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: "t")
  double get unixMillisecondsTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "v")
  double get volume => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeDataCopyWith<TradeData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeDataCopyWith<$Res> {
  factory $TradeDataCopyWith(TradeData value, $Res Function(TradeData) then) = _$TradeDataCopyWithImpl<$Res, TradeData>;
  @useResult
  $Res call(
      {@JsonKey(name: "p") double lastPrice,
      @JsonKey(name: "s") String symbol,
      @JsonKey(name: "t") double unixMillisecondsTimestamp,
      @JsonKey(name: "v") double volume});
}

/// @nodoc
class _$TradeDataCopyWithImpl<$Res, $Val extends TradeData> implements $TradeDataCopyWith<$Res> {
  _$TradeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPrice = null,
    Object? symbol = null,
    Object? unixMillisecondsTimestamp = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      lastPrice: null == lastPrice
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      unixMillisecondsTimestamp: null == unixMillisecondsTimestamp
          ? _value.unixMillisecondsTimestamp
          : unixMillisecondsTimestamp // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeDataImplCopyWith<$Res> implements $TradeDataCopyWith<$Res> {
  factory _$$TradeDataImplCopyWith(_$TradeDataImpl value, $Res Function(_$TradeDataImpl) then) =
      __$$TradeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "p") double lastPrice,
      @JsonKey(name: "s") String symbol,
      @JsonKey(name: "t") double unixMillisecondsTimestamp,
      @JsonKey(name: "v") double volume});
}

/// @nodoc
class __$$TradeDataImplCopyWithImpl<$Res> extends _$TradeDataCopyWithImpl<$Res, _$TradeDataImpl>
    implements _$$TradeDataImplCopyWith<$Res> {
  __$$TradeDataImplCopyWithImpl(_$TradeDataImpl _value, $Res Function(_$TradeDataImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastPrice = null,
    Object? symbol = null,
    Object? unixMillisecondsTimestamp = null,
    Object? volume = null,
  }) {
    return _then(_$TradeDataImpl(
      lastPrice: null == lastPrice
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      unixMillisecondsTimestamp: null == unixMillisecondsTimestamp
          ? _value.unixMillisecondsTimestamp
          : unixMillisecondsTimestamp // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeDataImpl implements _TradeData {
  const _$TradeDataImpl(
      {@JsonKey(name: "p") required this.lastPrice,
      @JsonKey(name: "s") required this.symbol,
      @JsonKey(name: "t") required this.unixMillisecondsTimestamp,
      @JsonKey(name: "v") required this.volume});

  factory _$TradeDataImpl.fromJson(Map<String, dynamic> json) => _$$TradeDataImplFromJson(json);

  @override
  @JsonKey(name: "p")
  final double lastPrice;
  @override
  @JsonKey(name: "s")
  final String symbol;
  @override
  @JsonKey(name: "t")
  final double unixMillisecondsTimestamp;
  @override
  @JsonKey(name: "v")
  final double volume;

  @override
  String toString() {
    return 'TradeData(lastPrice: $lastPrice, symbol: $symbol, unixMillisecondsTimestamp: $unixMillisecondsTimestamp, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeDataImpl &&
            (identical(other.lastPrice, lastPrice) || other.lastPrice == lastPrice) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.unixMillisecondsTimestamp, unixMillisecondsTimestamp) ||
                other.unixMillisecondsTimestamp == unixMillisecondsTimestamp) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastPrice, symbol, unixMillisecondsTimestamp, volume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeDataImplCopyWith<_$TradeDataImpl> get copyWith =>
      __$$TradeDataImplCopyWithImpl<_$TradeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeDataImplToJson(
      this,
    );
  }
}

abstract class _TradeData implements TradeData {
  const factory _TradeData(
      {@JsonKey(name: "p") required final double lastPrice,
      @JsonKey(name: "s") required final String symbol,
      @JsonKey(name: "t") required final double unixMillisecondsTimestamp,
      @JsonKey(name: "v") required final double volume}) = _$TradeDataImpl;

  factory _TradeData.fromJson(Map<String, dynamic> json) = _$TradeDataImpl.fromJson;

  @override
  @JsonKey(name: "p")
  double get lastPrice;
  @override
  @JsonKey(name: "s")
  String get symbol;
  @override
  @JsonKey(name: "t")
  double get unixMillisecondsTimestamp;
  @override
  @JsonKey(name: "v")
  double get volume;
  @override
  @JsonKey(ignore: true)
  _$$TradeDataImplCopyWith<_$TradeDataImpl> get copyWith => throw _privateConstructorUsedError;
}
