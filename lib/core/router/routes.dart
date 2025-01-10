import 'package:drinkt_q/core/router/route_guard.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Names of route (typo secure)
enum RouteNames {
  da('/da'),
  home('/home');

  final String path;

  const RouteNames(this.path);
}

/// Routing logic for the app (using go_router package)
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final guard = RouteGuard();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RouteNames.home.path,
  // redirect: (context, state) async {
  //   return await guard.checkTokenAndReload();
  // },
  routes: [
    // ShellRoute(
    //   navigatorKey: GlobalKey<NavigatorState>(),
    //   builder: (context, state, child) {
    //
    //     return KeyedSubtree(
    //       key: const ValueKey('sidebar'),
    //       child: SidebarWidget(
    //         scaffoldKey: scaffoldKey,
    //         child: child,
    //       ),
    //     );
    //   },
    //   routes: [
    //     GoRoute(
    //       path: RouteNames.chatList.path,
    //       name: RouteNames.chatList.name,
    //       builder: (context, state) => const ChatListScreen(),
    //     ),
    //     GoRoute(
    //       path: RouteNames.profile.path,
    //       name: RouteNames.profile.name,
    //       builder: (context, state) => const ProfileScreen(),
    //     ),
    //     GoRoute(
    //       path: RouteNames.initFeatures.path,
    //       name: RouteNames.initFeatures.name,
    //       builder: (context, state) => Container(),
    //     ),
    //   ],
    // ),

    GoRoute(
      path: RouteNames.home.path,
      name: RouteNames.home.name,
      builder: (context, state) => Container(),
    ),
    GoRoute(
      path: RouteNames.da.path,
      name: RouteNames.da.name,
      builder: (context, state) => Container(),
    ),
  ],
);
