// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_state_model.freezed.dart';
part 'auth_state_model.g.dart';

@freezed
class AuthStateModel with _$AuthStateModel {
  const factory AuthStateModel({required bool isLoading, User? authUser, LoggedUserModel? loggedUserModel}) =
      _AuthStateModel;
}

@freezed
class LoggedUserModel with _$LoggedUserModel {
  const factory LoggedUserModel(
      {@JsonKey(name: "avatar_url") String? avatarUrl,
      @JsonKey(name: "full_name") String? fullName,
      String? picture,
      String? name}) = _LoggedUserModel;

  factory LoggedUserModel.fromJson(Map<String, dynamic> json) => _$LoggedUserModelFromJson(json);
}
