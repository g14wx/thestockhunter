import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/info/controller/info_controller.dart';
import 'package:thestuckhunter/features/info/presentation/page/screens/initial_state_auth_screen.dart';
import 'package:thestuckhunter/features/info/presentation/page/screens/loading_auth_screen.dart';
import 'package:thestuckhunter/features/info/presentation/page/screens/success_logged_user.dart';

class InfoPage extends HookConsumerWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localIInfoControllerProvider = ref.watch(infoControllerProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Container(
          child: localIInfoControllerProvider.isLoading
              ? const LoadingAuthScreen()
              : localIInfoControllerProvider.loggedUserModel != null
                  ? const SuccessLoggedUser()
                  : const InitialStateAuthScreen(),
        ));
  }
}
