import 'package:flutter/material.dart';

class NavigationHandler {
  const NavigationHandler(this.context);

  final BuildContext context;

  Future<T?> navigateTo<T>(String routeName, {Map<String, dynamic>? arguments}) async {
    return Navigator.of(context).pushNamed<T>(routeName, arguments: arguments);
  }
}
