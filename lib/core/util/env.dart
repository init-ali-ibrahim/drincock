import 'package:flutter_dotenv/flutter_dotenv.dart';

/// For work with .env (uses the "flutter_dotenv" package)
String urlAuthFromEnv = dotenv.get('BASE_AUTH_URL'); //"https://init:14501451@auth.init.kz/api"
String urlChatFromEnv = dotenv.get('BASE_CHAT_URL'); //"https://init:14501451@chat.init.kz"
String apiKey = dotenv.get('X-API-KEY');

class EnvConfig {
  static final String urlAuthFromEnv = dotenv.get('BASE_AUTH_URL');
  static final String urlChatFromEnv = dotenv.get('BASE_CHAT_URL');
  static final String apiKey = dotenv.get('X-API-KEY');
}