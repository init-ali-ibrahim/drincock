
import 'package:drinkt_q/core/component/bottom_navbar/bottom_nav_bar_factory.dart';
import 'package:drinkt_q/core/router/routes.dart';
import 'package:flutter/material.dart';

class BtmNavBarThird extends StatefulWidget {
  final List<NavItem> navItems;
  final Color? bgColor;
  final Color? activeColor;
  final Color? defColor;

  const BtmNavBarThird({
    super.key,
    required this.navItems,
    this.bgColor,
    this.activeColor,
    this.defColor,
  });

  @override
  State<BtmNavBarThird> createState() => _BtmNavBarThirdState();
}

class _BtmNavBarThirdState extends State<BtmNavBarThird> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.6), width: 1)),
      ),
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 25, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: widget.navItems
            .asMap()
            .entries
            .map((entry) => _buildNavItem(
          entry.value.icon,
          entry.key,
          entry.value.route,
          hasNotification: entry.value.hasNotification,
        ))
            .toList(),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index, String route, {bool hasNotification = false}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        router.go(route);
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Icon(
            icon,
            size: 30,
            color: _selectedIndex == index ? Colors.black : Colors.grey,
          ),
          if (hasNotification)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
