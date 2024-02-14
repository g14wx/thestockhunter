// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthStateModel {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get authUser => throw _privateConstructorUsedError;
  LoggedUserModel? get loggedUserModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateModelCopyWith<AuthStateModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateModelCopyWith<$Res> {
  factory $AuthStateModelCopyWith(AuthStateModel value, $Res Function(AuthStateModel) then) =
      _$AuthStateModelCopyWithImpl<$Res, AuthStateModel>;
  @useResult
  $Res call({bool isLoading, User? authUser, LoggedUserModel? loggedUserModel});

  $LoggedUserModelCopyWith<$Res>? get loggedUserModel;
}

/// @nodoc
class _$AuthStateModelCopyWithImpl<$Res, $Val extends AuthStateModel> implements $AuthStateModelCopyWith<$Res> {
  _$AuthStateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? authUser = freezed,
    Object? loggedUserModel = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authUser: freezed == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as User?,
      loggedUserModel: freezed == loggedUserModel
          ? _value.loggedUserModel
          : loggedUserModel // ignore: cast_nullable_to_non_nullable
              as LoggedUserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoggedUserModelCopyWith<$Res>? get loggedUserModel {
    if (_value.loggedUserModel == null) {
      return null;
    }

    return $LoggedUserModelCopyWith<$Res>(_value.loggedUserModel!, (value) {
      return _then(_value.copyWith(loggedUserModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateModelImplCopyWith<$Res> implements $AuthStateModelCopyWith<$Res> {
  factory _$$AuthStateModelImplCopyWith(_$AuthStateModelImpl value, $Res Function(_$AuthStateModelImpl) then) =
      __$$AuthStateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, User? authUser, LoggedUserModel? loggedUserModel});

  @override
  $LoggedUserModelCopyWith<$Res>? get loggedUserModel;
}

/// @nodoc
class __$$AuthStateModelImplCopyWithImpl<$Res> extends _$AuthStateModelCopyWithImpl<$Res, _$AuthStateModelImpl>
    implements _$$AuthStateModelImplCopyWith<$Res> {
  __$$AuthStateModelImplCopyWithImpl(_$AuthStateModelImpl _value, $Res Function(_$AuthStateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? authUser = freezed,
    Object? loggedUserModel = freezed,
  }) {
    return _then(_$AuthStateModelImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      authUser: freezed == authUser
          ? _value.authUser
          : authUser // ignore: cast_nullable_to_non_nullable
              as User?,
      loggedUserModel: freezed == loggedUserModel
          ? _value.loggedUserModel
          : loggedUserModel // ignore: cast_nullable_to_non_nullable
              as LoggedUserModel?,
    ));
  }
}

/// @nodoc

class _$AuthStateModelImpl implements _AuthStateModel {
  const _$AuthStateModelImpl({required this.isLoading, this.authUser, this.loggedUserModel});

  @override
  final bool isLoading;
  @override
  final User? authUser;
  @override
  final LoggedUserModel? loggedUserModel;

  @override
  String toString() {
    return 'AuthStateModel(isLoading: $isLoading, authUser: $authUser, loggedUserModel: $loggedUserModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateModelImpl &&
            (identical(other.isLoading, isLoading) || other.isLoading == isLoading) &&
            (identical(other.authUser, authUser) || other.authUser == authUser) &&
            (identical(other.loggedUserModel, loggedUserModel) || other.loggedUserModel == loggedUserModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, authUser, loggedUserModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateModelImplCopyWith<_$AuthStateModelImpl> get copyWith =>
      __$$AuthStateModelImplCopyWithImpl<_$AuthStateModelImpl>(this, _$identity);
}

abstract class _AuthStateModel implements AuthStateModel {
  const factory _AuthStateModel(
      {required final bool isLoading,
      final User? authUser,
      final LoggedUserModel? loggedUserModel}) = _$AuthStateModelImpl;

  @override
  bool get isLoading;
  @override
  User? get authUser;
  @override
  LoggedUserModel? get loggedUserModel;
  @override
  @JsonKey(ignore: true)
  _$$AuthStateModelImplCopyWith<_$AuthStateModelImpl> get copyWith => throw _privateConstructorUsedError;
}

LoggedUserModel _$LoggedUserModelFromJson(Map<String, dynamic> json) {
  return _LoggedUserModel.fromJson(json);
}

/// @nodoc
mixin _$LoggedUserModel {
  @JsonKey(name: "avatar_url")
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedUserModelCopyWith<LoggedUserModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedUserModelCopyWith<$Res> {
  factory $LoggedUserModelCopyWith(LoggedUserModel value, $Res Function(LoggedUserModel) then) =
      _$LoggedUserModelCopyWithImpl<$Res, LoggedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "avatar_url") String? avatarUrl,
      @JsonKey(name: "full_name") String? fullName,
      String? picture,
      String? name});
}

/// @nodoc
class _$LoggedUserModelCopyWithImpl<$Res, $Val extends LoggedUserModel> implements $LoggedUserModelCopyWith<$Res> {
  _$LoggedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = freezed,
    Object? fullName = freezed,
    Object? picture = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoggedUserModelImplCopyWith<$Res> implements $LoggedUserModelCopyWith<$Res> {
  factory _$$LoggedUserModelImplCopyWith(_$LoggedUserModelImpl value, $Res Function(_$LoggedUserModelImpl) then) =
      __$$LoggedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "avatar_url") String? avatarUrl,
      @JsonKey(name: "full_name") String? fullName,
      String? picture,
      String? name});
}

/// @nodoc
class __$$LoggedUserModelImplCopyWithImpl<$Res> extends _$LoggedUserModelCopyWithImpl<$Res, _$LoggedUserModelImpl>
    implements _$$LoggedUserModelImplCopyWith<$Res> {
  __$$LoggedUserModelImplCopyWithImpl(_$LoggedUserModelImpl _value, $Res Function(_$LoggedUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = freezed,
    Object? fullName = freezed,
    Object? picture = freezed,
    Object? name = freezed,
  }) {
    return _then(_$LoggedUserModelImpl(
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggedUserModelImpl implements _LoggedUserModel {
  const _$LoggedUserModelImpl(
      {@JsonKey(name: "avatar_url") this.avatarUrl,
      @JsonKey(name: "full_name") this.fullName,
      this.picture,
      this.name});

  factory _$LoggedUserModelImpl.fromJson(Map<String, dynamic> json) => _$$LoggedUserModelImplFromJson(json);

  @override
  @JsonKey(name: "avatar_url")
  final String? avatarUrl;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  final String? picture;
  @override
  final String? name;

  @override
  String toString() {
    return 'LoggedUserModel(avatarUrl: $avatarUrl, fullName: $fullName, picture: $picture, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedUserModelImpl &&
            (identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl) &&
            (identical(other.fullName, fullName) || other.fullName == fullName) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl, fullName, picture, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedUserModelImplCopyWith<_$LoggedUserModelImpl> get copyWith =>
      __$$LoggedUserModelImplCopyWithImpl<_$LoggedUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggedUserModelImplToJson(
      this,
    );
  }
}

abstract class _LoggedUserModel implements LoggedUserModel {
  const factory _LoggedUserModel(
      {@JsonKey(name: "avatar_url") final String? avatarUrl,
      @JsonKey(name: "full_name") final String? fullName,
      final String? picture,
      final String? name}) = _$LoggedUserModelImpl;

  factory _LoggedUserModel.fromJson(Map<String, dynamic> json) = _$LoggedUserModelImpl.fromJson;

  @override
  @JsonKey(name: "avatar_url")
  String? get avatarUrl;
  @override
  @JsonKey(name: "full_name")
  String? get fullName;
  @override
  String? get picture;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$LoggedUserModelImplCopyWith<_$LoggedUserModelImpl> get copyWith => throw _privateConstructorUsedError;
}
