import 'package:animations/animations.dart';
import 'package:drinkt_q/core/constants/app_colors.dart';
import 'package:drinkt_q/core/theme/custom_theme_extension.dart';
import 'package:flutter/material.dart';

class AppTheme {
  /// ThemeData lightTheme;
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    useMaterial3: true,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: Colors.black),
    ),
    colorScheme: const ColorScheme.light(
      surface: Colors.white,
      shadow: Colors.grey,
    ),
    dividerColor: AppColors.greyShade200,
    dividerTheme: const DividerThemeData(
      color: AppColors.greyShade200,
      thickness: 1,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.greyShade50,
    ),
    extensions: <ThemeExtension<dynamic>>[
      CustomThemeExtension(
        backgroundColor: AppColors.greyShade100,
      ),
    ],

    /// Animation of screen transitions (uses the "animations" package)
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
        TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
      },
    ),
  );

  /// ThemeData darkTheme;
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(
      surface: Colors.black,
      shadow: Colors.black54,
    ),
    useMaterial3: true,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
    ),
    dividerColor: AppColors.greyShade800,
    dividerTheme: const DividerThemeData(
      color: AppColors.greyShade800,
      thickness: 1,
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColors.greyShade900,
    ),
    extensions: <ThemeExtension<dynamic>>[
      CustomThemeExtension(
        backgroundColor: AppColors.greyShade900,
      ),
    ],

    /// Animation of screen transitions (uses the "animations" package)
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
        TargetPlatform.iOS: SharedAxisPageTransitionsBuilder(
          transitionType: SharedAxisTransitionType.horizontal,
        ),
      },
    ),
  );

  /// ThemeData others;
}
