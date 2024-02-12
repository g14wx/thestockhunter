// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_stock_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalStockModels {
  List<SymbolModel> get stocks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalStockModelsCopyWith<LocalStockModels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalStockModelsCopyWith<$Res> {
  factory $LocalStockModelsCopyWith(LocalStockModels value, $Res Function(LocalStockModels) then) =
      _$LocalStockModelsCopyWithImpl<$Res, LocalStockModels>;
  @useResult
  $Res call({List<SymbolModel> stocks});
}

/// @nodoc
class _$LocalStockModelsCopyWithImpl<$Res, $Val extends LocalStockModels> implements $LocalStockModelsCopyWith<$Res> {
  _$LocalStockModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_value.copyWith(
      stocks: null == stocks
          ? _value.stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalStockModelsImplCopyWith<$Res> implements $LocalStockModelsCopyWith<$Res> {
  factory _$$LocalStockModelsImplCopyWith(_$LocalStockModelsImpl value, $Res Function(_$LocalStockModelsImpl) then) =
      __$$LocalStockModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SymbolModel> stocks});
}

/// @nodoc
class __$$LocalStockModelsImplCopyWithImpl<$Res> extends _$LocalStockModelsCopyWithImpl<$Res, _$LocalStockModelsImpl>
    implements _$$LocalStockModelsImplCopyWith<$Res> {
  __$$LocalStockModelsImplCopyWithImpl(_$LocalStockModelsImpl _value, $Res Function(_$LocalStockModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stocks = null,
  }) {
    return _then(_$LocalStockModelsImpl(
      stocks: null == stocks
          ? _value._stocks
          : stocks // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
    ));
  }
}

/// @nodoc

class _$LocalStockModelsImpl implements _LocalStockModels {
  const _$LocalStockModelsImpl({final List<SymbolModel> stocks = const []}) : _stocks = stocks;

  final List<SymbolModel> _stocks;
  @override
  @JsonKey()
  List<SymbolModel> get stocks {
    if (_stocks is EqualUnmodifiableListView) return _stocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stocks);
  }

  @override
  String toString() {
    return 'LocalStockModels(stocks: $stocks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalStockModelsImpl &&
            const DeepCollectionEquality().equals(other._stocks, _stocks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_stocks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalStockModelsImplCopyWith<_$LocalStockModelsImpl> get copyWith =>
      __$$LocalStockModelsImplCopyWithImpl<_$LocalStockModelsImpl>(this, _$identity);
}

abstract class _LocalStockModels implements LocalStockModels {
  const factory _LocalStockModels({final List<SymbolModel> stocks}) = _$LocalStockModelsImpl;

  @override
  List<SymbolModel> get stocks;
  @override
  @JsonKey(ignore: true)
  _$$LocalStockModelsImplCopyWith<_$LocalStockModelsImpl> get copyWith => throw _privateConstructorUsedError;
}
