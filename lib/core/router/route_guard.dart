

class RouteGuard {
  static final RouteGuard _instance = RouteGuard._internal();
  factory RouteGuard() => _instance;
  RouteGuard._internal();

}
