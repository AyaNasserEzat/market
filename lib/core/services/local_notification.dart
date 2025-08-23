import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
static  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
      static onTap(NotificationResponse notificationResponse){}
 static Future initLocalNotification() async {
    AndroidInitializationSettings android = AndroidInitializationSettings(
      "@mipmap/ic_launcher",
    );
    DarwinInitializationSettings ios = DarwinInitializationSettings();
    InitializationSettings settings = InitializationSettings(
      android: android,
      iOS: ios,
    );
    flutterLocalNotificationsPlugin.initialize(settings,
    onDidReceiveBackgroundNotificationResponse: onTap,
    onDidReceiveNotificationResponse: onTap
    );

    
  }

static showNotification(RemoteMessage message){
  AndroidNotificationDetails androidNotificationDetails= AndroidNotificationDetails("channelId", "channelName",priority: Priority.high,importance: Importance.max);
  NotificationDetails notificationDetails=NotificationDetails(android:androidNotificationDetails);
  flutterLocalNotificationsPlugin.show(0, message.notification?.title, message.notification?.body, notificationDetails);
}
}
