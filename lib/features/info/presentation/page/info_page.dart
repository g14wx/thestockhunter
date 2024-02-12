import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/services/sing_in_with_third_party_service/sing_in_with_third_party_service.dart';

class InfoPage extends HookConsumerWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signInWithThirdPartyService = ref.watch(signInWithThirdPartyServiceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("G14wx"),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  ref.read(signInWithThirdPartyServiceProvider.notifier).socialSignIn("google", context);
                },
                child: const Text("Log in")),
            if (signInWithThirdPartyService.isLoggedIn) Text(signInWithThirdPartyService.account.toString())
          ],
        ),
      ),
    );
  }
}
