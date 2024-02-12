import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/env/env.dart';
import 'package:thestuckhunter/services/sing_in_with_third_party_service/models/signing_third_party_model.dart';

part 'sing_in_with_third_party_service.g.dart';

@Riverpod(keepAlive: true)
class SignInWithThirdPartyService extends _$SignInWithThirdPartyService {
  final signingThirdPartyModel = SigningThirdPartyModel();
  SignInWithThirdPartyService() {
    _initialize();
  }

  @override
  SigningThirdPartyModel build() {
    return signingThirdPartyModel;
  }

  _initialize() {
    signingThirdPartyModel.client
      ..setProject(Env.appWriteProjectId)
      ..setEndpoint("https://cloud.appwrite.io/v1");
    signingThirdPartyModel.account = Account(signingThirdPartyModel.client);
  }

  socialSignIn(String provider, context) async {
    await state.account
        .createOAuth2Session(
      provider: provider,
      success: "",
      failure: "",
    )
        .then((response) {
      state.isLoggedIn = true;

      state = state;
    }).catchError((e) {
      state.isLoggedIn = false;
      state = state;
    });
  }
}
