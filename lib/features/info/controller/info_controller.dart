import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/features/info/controller/models/auth_state_model.dart';

import 'package:thestuckhunter/services/sing_in_with_third_party_service/sing_in_with_third_party_service.dart';

part 'info_controller.g.dart';

@riverpod
class InfoController extends _$InfoController {
  @override
  AuthStateModel build() {
    final signInWithThirdPartyService = ref.watch(signInWithThirdPartyServiceProvider).requireValue;
    final Map<String, dynamic>? rawJson = signInWithThirdPartyService.supabase.client.auth.currentUser?.userMetadata;
    LoggedUserModel? loggedUserModel;
    if (rawJson != null) {
      loggedUserModel = LoggedUserModel.fromJson(rawJson);
    }
    final authUser = signInWithThirdPartyService.supabase.client.auth.currentUser;
    return AuthStateModel(isLoading: false, authUser: authUser, loggedUserModel: loggedUserModel);
  }

  void checkLoggedUser() {
    final signInWithThirdPartyService = ref.watch(signInWithThirdPartyServiceProvider).requireValue;
    final Map<String, dynamic>? rawJson = signInWithThirdPartyService.supabase.client.auth.currentUser?.userMetadata;
    LoggedUserModel? loggedUserModel;
    if (rawJson != null) {
      loggedUserModel = LoggedUserModel.fromJson(rawJson);
    }
    state = state.copyWith(
        authUser: signInWithThirdPartyService.supabase.client.auth.currentUser, loggedUserModel: loggedUserModel);
  }

  Future<void> sigIn() async {
    final signInWithThirdPartyService = ref.watch(signInWithThirdPartyServiceProvider).requireValue;
    state = state.copyWith(isLoading: true);
    await AsyncValue.guard(signInWithThirdPartyService.googleSignIn);
    final Map<String, dynamic>? rawJson = signInWithThirdPartyService.supabase.client.auth.currentUser?.userMetadata;
    LoggedUserModel? loggedUserModel;
    if (rawJson != null) {
      loggedUserModel = LoggedUserModel.fromJson(rawJson);
    }
    state = state.copyWith(
        isLoading: false,
        authUser: signInWithThirdPartyService.supabase.client.auth.currentUser,
        loggedUserModel: loggedUserModel);
  }

  Future<void> signOut() async {
    final signInWithThirdPartyService = ref.watch(signInWithThirdPartyServiceProvider).requireValue;
    state = state.copyWith(isLoading: true);
    await AsyncValue.guard(signInWithThirdPartyService.signOut);
    state = state.copyWith(isLoading: false, loggedUserModel: null, authUser: null);
  }

  Future<void> checkUser() async {
    final signInWithThirdPartyService = ref.watch(signInWithThirdPartyServiceProvider).requireValue;
    state = state.copyWith(isLoading: true);
    await AsyncValue.guard(signInWithThirdPartyService.googleSignIn);
  }
}
