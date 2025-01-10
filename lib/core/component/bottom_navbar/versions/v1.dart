import 'package:drinkt_q/core/component/bottom_navbar/bottom_nav_bar_factory.dart';
import 'package:flutter/material.dart';

class BtmNavBarFirst extends StatefulWidget {
  final List<NavItem> navItems;
  final Color? bgColor;
  final Color? activeColor;
  final double? rad;

  const BtmNavBarFirst({
    super.key,
    required this.navItems,
    this.bgColor,
    this.activeColor,
    this.rad,
  });

  @override
  State<BtmNavBarFirst> createState() => _BtmNavBarFirstState();
}

class _BtmNavBarFirstState extends State<BtmNavBarFirst> {
  int currentBottomIndex = 0;
  double displayWidth = 0;

  @override
  Widget build(BuildContext context) {
    displayWidth = MediaQuery.of(context).size.width;
    return const Stack(
      children: [
        SizedBox(),
      ],
    );
  }
}