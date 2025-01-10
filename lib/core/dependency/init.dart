import 'package:drinkt_q/core/dependency/uisystem_init.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:drinkt_q/core/dependency/dotenv_init.dart';
import 'package:drinkt_q/core/dependency/form_validator_init.dart';
import 'package:drinkt_q/core/repo/app_repo.dart';
import 'package:drinkt_q/firebase_options.dart';
import 'package:drinkt_q/core/dependency/local_notification_init.dart';
import 'package:drinkt_q/core/dependency/firebase_messaging_init.dart';
import 'package:firebase_core/firebase_core.dart';

class AppInit {
  static AppRepo repo = AppRepo();

  static Future<void> initialize() async {

    /// Flutter Widgets initialization
    WidgetsFlutterBinding.ensureInitialized();

    /// Validator form initialization (uses the "form_validator" package)
    FormValidatorInit.setup();

    /// UISystemInit initialization
    UISystemInit.setup();

    /// Read .env file and load variables (uses the "flutter_dotenv" package)
    await DotEnvInit.setup();

    /// Firebase initialization
    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );

    /// Firebase Messaging initialization (uses the "firebase_messaging" package)
    // await FirebaseMessagingInit.setup();

    /// Local Notifications initialization (uses the "flutter_local_notifications" package)
    // await LocalNotificationInit.setup();

    /// Easy Localization initialization (uses the "easy_localization" package)
    await EasyLocalization.ensureInitialized();

    // FirebaseAnalytics analytics = FirebaseAnalytics.instance;
    // FirebaseAnalytics.instance;
  }

}
