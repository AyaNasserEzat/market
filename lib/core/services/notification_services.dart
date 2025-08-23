import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:pure_soft/core/services/local_notification.dart';

class NotificationServices {
 static FirebaseMessaging messaging=FirebaseMessaging.instance;
  static Future init()async{
await messaging.requestPermission();
String? token=await messaging.getToken();
print("token$token");
FirebaseMessaging.onBackgroundMessage(handelBackgroundMessage);
FirebaseMessaging.onMessage.listen((RemoteMessage message){
  LocalNotification.showNotification(message);
});
  }
  static Future<void> handelBackgroundMessage(RemoteMessage message)async{
  await  Firebase.initializeApp();
  }
}