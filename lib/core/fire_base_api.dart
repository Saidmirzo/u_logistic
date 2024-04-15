// import 'dart:developer';

// import 'package:firebase_messaging/firebase_messaging.dart';

// Future handleBackgroundMessaging(RemoteMessage message) async {
//   if (message.notification != null) {
//      log('Notification revived');
//   }
//   log(message.data.toString());
// }

// class FireBaseApi {
//   final firebaseMessaging = FirebaseMessaging.instance;
//   Future initNotification() async {
//     await firebaseMessaging.requestPermission();
//     final fCMToken = await firebaseMessaging.getToken();
//     log(fCMToken.toString());
//     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessaging);
//   }
// }
