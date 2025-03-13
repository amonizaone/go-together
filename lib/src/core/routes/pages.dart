//  route_pages;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/src/core/error/error.dart';
import '/src/core/animation/animation.dart';
import 'routes.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRoute {
  static const initial = RoutesName.initial;
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.initial:
      // return const PageFadeTransition(child: HomePage()).build;

      default:
        // If there is no such named route in the switch statement
        throw const RouteException('Route not found!');
    }
  }

  // generate routes with go router
  //static GoRoute goRoute;

  final routes = [
    // GoRoute(
    //   path: RoutesName.initial,
    //   builder: (context, state) => const HomePage(),
    // ),
  ];
}
