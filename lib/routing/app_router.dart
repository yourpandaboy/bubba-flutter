import 'package:bubba/constants/pages.dart';
import 'package:bubba/features/location/presentation/pages/homepage.dart';
import 'package:bubba/features/location/presentation/pages/mappage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppRouter {
  final RouteObserver<PageRoute> routeObserver;

  AppRouter() : routeObserver = RouteObserver<PageRoute>();

  Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Pages.map:
        return _buildRoute(settings, const MapPage());
      case Pages.home:
        return _buildRoute(settings, const HomePage());
      default:
        throw Exception('Route not found');
    }
  }

  MaterialPageRoute _buildRoute<T>(RouteSettings settings, Widget builder) {
    return MaterialPageRoute<T>(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}

final appRouterProvider = Provider<AppRouter>((ref) => AppRouter());

/// Source: https://stackoverflow.com/a/69299440/15088304
///
/// Used for a global context.
class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

BuildContext? globalContext() => NavigationService.navigatorKey.currentContext;
