import 'package:drinkt_q/core/util/logger.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotEnvInit {
  static Future<void> setup() async {
    try {
      await dotenv.load(fileName: ".env");
    } catch (e) {
      logger.w("_loadEnvVariables() bad: $e !");
    }
  }
}
