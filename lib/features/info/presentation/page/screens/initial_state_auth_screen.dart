import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/info/controller/info_controller.dart';

class InitialStateAuthScreen extends HookConsumerWidget {
  const InitialStateAuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: TextButton(
        onPressed: () => ref.read(infoControllerProvider.notifier).sigIn(),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.login),
            SizedBox(
              width: 10,
            ),
            Text("Login with google"),
          ],
        ),
      ),
    );
  }
}
