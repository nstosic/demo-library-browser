import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/ui/details/book_details_view.dart';
import 'package:demo_books/ui/home/home_view.dart';
import 'package:demo_books/ui/navigation/navigation_parameters.dart';
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
        assert(
          settings.arguments is Map<String, dynamic>,
          'Expected non-empty arguments for this route',
        );
        final book = (settings.arguments! as Map<String, dynamic>)[BookDetailsKeys.book]
            as Map<String, dynamic>;
        return BookDetailsView(book: Book.fromJson(book));
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
