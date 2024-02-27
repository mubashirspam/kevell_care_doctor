import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

// import '../../pages/profile/presentation/my_profile_screen.dart';
import '../../settings/value/constant.dart';
import '../../settings/value/secure_storage.dart';

class PushNotification {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> initNoticatin() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    await FirebaseMessaging.instance.getToken().then((fcmToken) {
      log('fcmToken: $fcmToken');
      addToSS(fcmStoreKey, fcmToken!);
    });
    setupInteractedMessage();
    log('User granted permission: ${settings.authorizationStatus}');
  }

  void handleMessage(RemoteMessage message) {
    if (message.notification?.title == 'notification') {
      log('page navigation calld');
      // navigatorKey.currentState?.pushNamed(MyProfileScreen.routeName);
    }
  }

  Future<void> setupInteractedMessage() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.instance
        .getInitialMessage()
        .then((value) => handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log("message id == ${message.messageId}");
  log("message title == ${message.notification?.title}");
  log("message body == ${message.notification?.body}");
  log("message payload == ${message.data}");
}
