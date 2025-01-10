import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class GlobalFlushbarManager {
  static Flushbar? _currentFlushbar;
  static DateTime _lastFlushbarTime = DateTime.now();

  static showFlushbar({
    required BuildContext context,
    required String message,
    IconData icon = Icons.info_outline,
    Duration duration = const Duration(seconds: 1),
  })  async {
    final now = DateTime.now();
    final timeDiff = now.difference(_lastFlushbarTime);
    if (timeDiff < const Duration(milliseconds: 500)) {
      // return await Flushbar(
      //   title: 'Подожди',
      //   message: 'Успакойся и не трать время на замечания',
      //   duration: duration,
      //   margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      //   borderRadius: BorderRadius.circular(12),
      //   backgroundColor: Colors.black.withOpacity(0.8),
      //   animationDuration: const Duration(milliseconds: 300),
      //   forwardAnimationCurve: Curves.easeOutCubic,
      //   reverseAnimationCurve: Curves.easeOutCubic,
      //   isDismissible: true,
      //   dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      //   icon: Icon(
      //     icon,
      //     color: Colors.white,
      //   ),
      // )..show(context);

      return;
    }

    _lastFlushbarTime = now;

    _currentFlushbar?.dismiss();

    _currentFlushbar = Flushbar(
      message: message,
      duration: duration,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      borderRadius: BorderRadius.circular(12),
      backgroundColor: Colors.black.withOpacity(0.8),
      animationDuration: const Duration(milliseconds: 300),
      forwardAnimationCurve: Curves.easeOutCubic,
      reverseAnimationCurve: Curves.easeOutCubic,
      isDismissible: true,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
    )..show(context);
  }

  static void dismiss() {
    _currentFlushbar?.dismiss();
    _currentFlushbar = null;
  }
}
