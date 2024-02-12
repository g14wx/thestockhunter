// ignore_for_file: depend_on_referenced_packages
import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static final NotificationService _notificationService = NotificationService._internal();

  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();

  Future<void> init() async {
    const AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

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
