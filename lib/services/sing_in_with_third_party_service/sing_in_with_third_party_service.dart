import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:thestuckhunter/env/env.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'sing_in_with_third_party_service.g.dart';

class SignInWithThirdPartyService {
  late final GoogleSignIn _googleSignInInstance;

  SignInWithThirdPartyService(this.supabase) {
    _googleSignInInstance = GoogleSignIn(
      serverClientId: Env.googleWebClientId,
    );
  }

  final Supabase supabase;
  static const setupCompleteKey = 'setupAuthComplete';

  Future<AuthResponse> googleSignIn() async {
    final googleUser = await _googleSignInInstance.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    return supabase.client.auth.signInWithIdToken(
      provider: OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }

  Future<void> signOut() async {
    await _googleSignInInstance.signOut();
    await supabase.client.auth.signOut();
  }
}

@Riverpod(keepAlive: true)
Future<SignInWithThirdPartyService> signInWithThirdPartyService(SignInWithThirdPartyServiceRef ref) async {
  final signInWithThirdParty = SignInWithThirdPartyService(await Supabase.initialize(
    url: Env.authEndpoint,
    anonKey: Env.authKey,
  ));
  return signInWithThirdParty;
}
