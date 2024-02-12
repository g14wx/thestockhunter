import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thestuckhunter/features/app_startup/presentation/pages/app_startup_page/screens/app_startup_error_screen.dart';
import 'package:thestuckhunter/features/app_startup/presentation/pages/app_startup_page/screens/app_startup_loading_screen.dart';
import 'package:thestuckhunter/providers/app_startup_provider/app_startup.dart';

class AppStartupPage extends HookConsumerWidget {
  const AppStartupPage({super.key, required this.onLoaded});
  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);
    return appStartupState.when(
      data: (_) => onLoaded(context),
      loading: () => const AppStartupLoadingScreen(),
      error: (e, st) => AppStartupErrorScreen(
        message: e.toString(),
        onRetry: () => ref.invalidate(appStartupProvider),
      ),
    );
  }
}
