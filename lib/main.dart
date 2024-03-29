import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import 'app.dart';
import 'features/app_startup/presentation/pages/app_startup_page/app_startup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Permission.notification.request();
  runApp(ProviderScope(
    child: AppStartupPage(
      onLoaded: (context) => const App(),
    ),
  ));
}
