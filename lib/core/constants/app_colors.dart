import 'package:flutter/material.dart';

class AppColors {
  ///  Main Colors
  static const MaterialColor primary = Colors.red;
  static const MaterialColor blue = Colors.blue;
  static const MaterialColor grey = Colors.grey;
  static const MaterialColor green = Colors.green;

  /// Shades of primary color
  static const Color primaryShade50 = Color(0xFFFFEBEE);
  static const Color primaryShade100 = Color(0xFFFFCDD2);
  static const Color primaryShade200 = Color(0xFFEF9A9A);
  static const Color primaryShade300 = Color(0xFFE57373);
  static const Color primaryShade400 = Color(0xFFEF5350);
  static const Color primaryShade500 = Color(0xFFF44336);
  static const Color primaryShade600 = Color(0xFFE53935);
  static const Color primaryShade700 = Color(0xFFD32F2F);
  static const Color primaryShade800 = Color(0xFFC62828);
  static const Color primaryShade900 = Color(0xFFB71C1C);

  /// Shades of grey color
  static const Color greyShade50 = Color(0xFFFAFAFA);
  static const Color greyShade100 = Color(0xFFF5F5F5);
  static const Color greyShade200 = Color(0xFFEEEEEE);
  static const Color greyShade300 = Color(0xFFE0E0E0);
  static const Color greyShade400 = Color(0xFFBDBDBD);
  static const Color greyShade500 = Color(0xFF9E9E9E);
  static const Color greyShade600 = Color(0xFF757575);
  static const Color greyShade700 = Color(0xFF616161);
  static const Color greyShade800 = Color(0xFF424242);
  static const Color greyShade900 = Color(0xFF212121);

  /// Shades of blue color
  static const Color blueShade50 = Color(0xFFE3F2FD);
  static const Color blueShade100 = Color(0xFFBBDEFB);

  /// Opacities of black color
  static const Color black12 = Color(0x1F000000);
  static const Color black50 = Color(0x80000000);
  static const Color black60 = Color(0x99000000);
  static const Color black87 = Color(0xDE000000);
  static const Color black90 = Color(0xE6000000);
  static const Color black100 = Color(0xFF000000);

  /// Opacities of white color
  static const Color white10 = Color(0x1AFFFFFF);
  static const Color white12 = Color(0x1EFFFFFF);
  static const Color white30 = Color(0x4CFFFFFF);
  static const Color white50 = Color(0x80FFFFFF);
  static const Color white54 = Color(0x8AFFFFFF);
  static const Color white70 = Color(0xB3FFFFFF);
  static const Color white80 = Color(0xCCFFFFFF);
  static const Color white90 = Color(0xE6FFFFFF);
  static const Color white100 = Color(0xFFFFFFFF);

  static const Color secondary = Color(0xFF03DAC6);
  static const Color borderColor = Color(0xFFDDDDDD);

  /// Background Colors
  static const Color background = Color(0xFFF5F5F5);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

  /// Text Colors
  static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFF757575);

  /// Gradients
  static const Gradient primaryGradient = LinearGradient(
    colors: [primary, secondary],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
