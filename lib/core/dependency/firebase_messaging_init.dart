import 'package:drinkt_q/core/util/logger.dart';
import 'package:drinkt_q/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseMessagingInit {
  static Future<void> setup() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    final messaging = FirebaseMessaging.instance;
    final token = await messaging.getToken();

    if (token != null) {
      logger.t(token);
    }
  }
}