import 'package:drinkt_q/core/component/bottom_navbar/versions/v1.dart';
import 'package:drinkt_q/core/component/bottom_navbar/versions/v3.dart';
import 'package:flutter/material.dart';

class BottomNavBarFactory {
  static Widget create({
    required BottomNavBarType type,
    required List<NavItem> navItems,
  }) {
    switch (type) {
      case BottomNavBarType.version1:
        return BtmNavBarFirst(
          navItems: navItems,
        );
      case BottomNavBarType.version3:
        return BtmNavBarThird(
          navItems: navItems,
        );
    }
  }
}

enum BottomNavBarType {
  version1,
  version3,
}

class NavItem {
  final IconData icon;
  final String route;
  final bool hasNotification;

  NavItem({
    required this.icon,
    required this.route,
    this.hasNotification = false,
  });
}
