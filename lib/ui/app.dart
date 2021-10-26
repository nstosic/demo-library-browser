import 'package:demo_books/dependency_injection/dependent_providers.dart';
import 'package:demo_books/dependency_injection/independent_providers.dart';
import 'package:demo_books/ui/home/home_view.dart';
import 'package:demo_books/ui/navigation/router.dart' as navigation;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...indepentProviders,
        ...dependentProviders,
      ],
      child: const MaterialApp(
        home: HomeView(),
        onGenerateRoute: navigation.Router.onGenerateRoute,
      ),
    );
  }
}
