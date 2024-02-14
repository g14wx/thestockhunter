import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'notification_service.g.dart';

class NotificationService {
  late final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  NotificationService({required this.flutterLocalNotificationsPlugin});

  Future<void> showNotification({required String channelId, required String title, required String bodyString}) async {
    final NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: AndroidNotificationDetails(
      channelId,
      channelId,
    ));

    await flutterLocalNotificationsPlugin
        .show(Random().nextInt(10000) + 99999, title, bodyString, platformChannelSpecifics, payload: 'data');
  }
}

@Riverpod(keepAlive: true)
Future<NotificationService> notificationService(NotificationServiceRef ref) async {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

  const InitializationSettings initializationSettings = InitializationSettings(android: initializationSettingsAndroid);

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);

  final signInWithThirdParty = NotificationService(flutterLocalNotificationsPlugin: flutterLocalNotificationsPlugin);
  return signInWithThirdParty;
}
