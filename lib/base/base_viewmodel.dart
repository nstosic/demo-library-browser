import 'dart:async';

import 'package:demo_books/ui/navigation/navigation_handler.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

abstract class BaseViewModel extends ChangeNotifier {
  bool _busy = false;
  bool get busy => _busy;
  @visibleForTesting
  set busy(bool value) {
    _busy = value;
    notifyListeners();
  }

  Exception? _error;
  Exception? get error => _error;
  @visibleForTesting
  set error(Exception? value) {
    _error = value;
    notifyListeners();
  }

  late NavigationHandler _navigation;
  @protected
  NavigationHandler get navigation => _navigation;

  Future<T> load<T>(Future<T> Function() task) async {
    busy = true;
    try {
      final result = await task();
      return result;
    } on Exception catch (ex) {
      error = ex;
      rethrow;
    } finally {
      busy = false;
    }
  }

  @nonVirtual
  Future<void> launch<T extends BaseViewModel>(
    NavigationHandler navigationHandler,
    void Function(T)? onViewModelLaunched,
  ) async {
    assert(
      this is T,
      'Illegal type override. Only callbacks of ${this.runtimeType} can be invoked for this instance of BaseViewModel',
    );
    this._navigation = navigationHandler;
    await init();
    onViewModelLaunched?.call(this as T);
  }

  FutureOr<void> init();
}
