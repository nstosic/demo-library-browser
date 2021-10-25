import 'package:demo_books/ui/home/home_view.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static const String home = '/';
  static const String bookDetails = '/bookDetails';
}

abstract class Router {
  static Widget _onGenerateScreen(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return const HomeView();
      case Routes.bookDetails:
      default:
        return const Scaffold(
          body: Center(
            child: Text('Unknown route'),
          ),
        );
    }
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<void>(
      builder: (context) => _onGenerateScreen(settings),
    );
  }
}
