
import 'package:onesignal_flutter/onesignal_flutter.dart';


class OnesignalPushNotification {


  static Future<void> init()async{
    

      // Enable verbose logging for debugging (remove in production)
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  // Initialize with your OneSignal App ID
  OneSignal.initialize("154e7b15-5e20-4d7f-be21-b35ffda12aea");
  // Use this method to prompt for push notifications.
  // We recommend removing this method after testing and instead use In-App Messages to prompt for notification permission.
  OneSignal.Notifications.requestPermission(true);
  

 

  OneSignal.Notifications.addForegroundWillDisplayListener((event){
    //event.preventDefault();
 event.notification.display();
 

  });

  
  }
  
}