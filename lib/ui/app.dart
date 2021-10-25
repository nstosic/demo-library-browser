import 'package:demo_books/dependency_injection/dependent_providers.dart';
import 'package:demo_books/dependency_injection/independent_providers.dart';
import 'package:demo_books/ui/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...dependentProviders,
        ...indepentProviders,
      ],
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
