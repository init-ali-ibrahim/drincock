import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeModeNotifier extends StateNotifier<bool> {
  late SharedPreferences prefs;

  Future _init() async {
    prefs = await SharedPreferences.getInstance();
    var darkMode = prefs.getBool("darkMode");
    state = darkMode ?? false;
  }

  ThemeModeNotifier() : super(false) {
    _init();
  }

  void toggle() {
    state = !state;
    prefs.setBool("darkMode", state);
  }
}

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, bool>(
  (ref) => ThemeModeNotifier(),
);
