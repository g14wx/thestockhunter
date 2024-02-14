// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RootSymbolModelResponse _$RootSymbolModelResponseFromJson(Map<String, dynamic> json) {
  return _RootSymbolModelResponse.fromJson(json);
}

/// @nodoc
mixin _$RootSymbolModelResponse {
  int get count => throw _privateConstructorUsedError;
  List<SymbolModel> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RootSymbolModelResponseCopyWith<RootSymbolModelResponse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootSymbolModelResponseCopyWith<$Res> {
  factory $RootSymbolModelResponseCopyWith(RootSymbolModelResponse value, $Res Function(RootSymbolModelResponse) then) =
      _$RootSymbolModelResponseCopyWithImpl<$Res, RootSymbolModelResponse>;
  @useResult
  $Res call({int count, List<SymbolModel> result});
}

/// @nodoc
class _$RootSymbolModelResponseCopyWithImpl<$Res, $Val extends RootSymbolModelResponse>
    implements $RootSymbolModelResponseCopyWith<$Res> {
  _$RootSymbolModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RootSymbolModelResponseImplCopyWith<$Res> implements $RootSymbolModelResponseCopyWith<$Res> {
  factory _$$RootSymbolModelResponseImplCopyWith(
          _$RootSymbolModelResponseImpl value, $Res Function(_$RootSymbolModelResponseImpl) then) =
      __$$RootSymbolModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<SymbolModel> result});
}

/// @nodoc
class __$$RootSymbolModelResponseImplCopyWithImpl<$Res>
    extends _$RootSymbolModelResponseCopyWithImpl<$Res, _$RootSymbolModelResponseImpl>
    implements _$$RootSymbolModelResponseImplCopyWith<$Res> {
  __$$RootSymbolModelResponseImplCopyWithImpl(
      _$RootSymbolModelResponseImpl _value, $Res Function(_$RootSymbolModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? result = null,
  }) {
    return _then(_$RootSymbolModelResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RootSymbolModelResponseImpl implements _RootSymbolModelResponse {
  const _$RootSymbolModelResponseImpl({required this.count, required final List<SymbolModel> result})
      : _result = result;

  factory _$RootSymbolModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RootSymbolModelResponseImplFromJson(json);

  @override
  final int count;
  final List<SymbolModel> _result;
  @override
  List<SymbolModel> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'RootSymbolModelResponse(count: $count, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootSymbolModelResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RootSymbolModelResponseImplCopyWith<_$RootSymbolModelResponseImpl> get copyWith =>
      __$$RootSymbolModelResponseImplCopyWithImpl<_$RootSymbolModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RootSymbolModelResponseImplToJson(
      this,
    );
  }
}

abstract class _RootSymbolModelResponse implements RootSymbolModelResponse {
  const factory _RootSymbolModelResponse({required final int count, required final List<SymbolModel> result}) =
      _$RootSymbolModelResponseImpl;

  factory _RootSymbolModelResponse.fromJson(Map<String, dynamic> json) = _$RootSymbolModelResponseImpl.fromJson;

  @override
  int get count;
  @override
  List<SymbolModel> get result;
  @override
  @JsonKey(ignore: true)
  _$$RootSymbolModelResponseImplCopyWith<_$RootSymbolModelResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SymbolModel _$SymbolModelFromJson(Map<String, dynamic> json) {
  return _SymbolModel.fromJson(json);
}

/// @nodoc
mixin _$SymbolModel {
  String? get currency => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get displaySymbol => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  double? get priceAlertFromUser => throw _privateConstructorUsedError;
  double? get lastPriceCache => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymbolModelCopyWith<SymbolModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolModelCopyWith<$Res> {
  factory $SymbolModelCopyWith(SymbolModel value, $Res Function(SymbolModel) then) =
      _$SymbolModelCopyWithImpl<$Res, SymbolModel>;
  @useResult
  $Res call(
      {String? currency,
      String description,
      String displaySymbol,
      String symbol,
      double? priceAlertFromUser,
      double? lastPriceCache});
}

/// @nodoc
class _$SymbolModelCopyWithImpl<$Res, $Val extends SymbolModel> implements $SymbolModelCopyWith<$Res> {
  _$SymbolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? description = null,
    Object? displaySymbol = null,
    Object? symbol = null,
    Object? priceAlertFromUser = freezed,
    Object? lastPriceCache = freezed,
  }) {
    return _then(_value.copyWith(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displaySymbol: null == displaySymbol
          ? _value.displaySymbol
          : displaySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      priceAlertFromUser: freezed == priceAlertFromUser
          ? _value.priceAlertFromUser
          : priceAlertFromUser // ignore: cast_nullable_to_non_nullable
              as double?,
      lastPriceCache: freezed == lastPriceCache
          ? _value.lastPriceCache
          : lastPriceCache // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SymbolModelImplCopyWith<$Res> implements $SymbolModelCopyWith<$Res> {
  factory _$$SymbolModelImplCopyWith(_$SymbolModelImpl value, $Res Function(_$SymbolModelImpl) then) =
      __$$SymbolModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? currency,
      String description,
      String displaySymbol,
      String symbol,
      double? priceAlertFromUser,
      double? lastPriceCache});
}

/// @nodoc
class __$$SymbolModelImplCopyWithImpl<$Res> extends _$SymbolModelCopyWithImpl<$Res, _$SymbolModelImpl>
    implements _$$SymbolModelImplCopyWith<$Res> {
  __$$SymbolModelImplCopyWithImpl(_$SymbolModelImpl _value, $Res Function(_$SymbolModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = freezed,
    Object? description = null,
    Object? displaySymbol = null,
    Object? symbol = null,
    Object? priceAlertFromUser = freezed,
    Object? lastPriceCache = freezed,
  }) {
    return _then(_$SymbolModelImpl(
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displaySymbol: null == displaySymbol
          ? _value.displaySymbol
          : displaySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      priceAlertFromUser: freezed == priceAlertFromUser
          ? _value.priceAlertFromUser
          : priceAlertFromUser // ignore: cast_nullable_to_non_nullable
              as double?,
      lastPriceCache: freezed == lastPriceCache
          ? _value.lastPriceCache
          : lastPriceCache // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymbolModelImpl implements _SymbolModel {
  const _$SymbolModelImpl(
      {this.currency,
      required this.description,
      required this.displaySymbol,
      required this.symbol,
      this.priceAlertFromUser,
      this.lastPriceCache});

  factory _$SymbolModelImpl.fromJson(Map<String, dynamic> json) => _$$SymbolModelImplFromJson(json);

  @override
  final String? currency;
  @override
  final String description;
  @override
  final String displaySymbol;
  @override
  final String symbol;
  @override
  final double? priceAlertFromUser;
  @override
  final double? lastPriceCache;

  @override
  String toString() {
    return 'SymbolModel(currency: $currency, description: $description, displaySymbol: $displaySymbol, symbol: $symbol, priceAlertFromUser: $priceAlertFromUser, lastPriceCache: $lastPriceCache)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymbolModelImpl &&
            (identical(other.currency, currency) || other.currency == currency) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.displaySymbol, displaySymbol) || other.displaySymbol == displaySymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.priceAlertFromUser, priceAlertFromUser) ||
                other.priceAlertFromUser == priceAlertFromUser) &&
            (identical(other.lastPriceCache, lastPriceCache) || other.lastPriceCache == lastPriceCache));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currency, description, displaySymbol, symbol, priceAlertFromUser, lastPriceCache);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymbolModelImplCopyWith<_$SymbolModelImpl> get copyWith =>
      __$$SymbolModelImplCopyWithImpl<_$SymbolModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymbolModelImplToJson(
      this,
    );
  }
}

abstract class _SymbolModel implements SymbolModel {
  const factory _SymbolModel(
      {final String? currency,
      required final String description,
      required final String displaySymbol,
      required final String symbol,
      final double? priceAlertFromUser,
      final double? lastPriceCache}) = _$SymbolModelImpl;

  factory _SymbolModel.fromJson(Map<String, dynamic> json) = _$SymbolModelImpl.fromJson;

  @override
  String? get currency;
  @override
  String get description;
  @override
  String get displaySymbol;
  @override
  String get symbol;
  @override
  double? get priceAlertFromUser;
  @override
  double? get lastPriceCache;
  @override
  @JsonKey(ignore: true)
  _$$SymbolModelImplCopyWith<_$SymbolModelImpl> get copyWith => throw _privateConstructorUsedError;
}
