import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

const supportedLocales = [Locale('kk'), Locale('ru'), Locale('en')];
const path = 'assets/translations';
const fallbackLocale = Locale('ru');

/// Widget from works with Localization (uses the "easy_localization" package)
Widget easyLocalizationWidget(Widget child) {
  return EasyLocalization(
      supportedLocales: supportedLocales,
      path: path,
      fallbackLocale: fallbackLocale,
      child: child,
  );
}