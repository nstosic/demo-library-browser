import 'dart:async';

import 'package:demo_books/base/base_view.dart';
import 'package:demo_books/base/base_viewmodel.dart';
import 'package:demo_books/ui/common/loading_state_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class TestViewModel extends BaseViewModel {
  bool _initExecuted = false;
  @override
  FutureOr<void> init() {
    _initExecuted = true;
  }
}

class StatefulViewModel extends BaseViewModel {
  int _counter = 0;

  @override
  FutureOr<void> init() {}

  void decrement() {
    _counter = _counter - 1;
    notifyListeners();
  }

  void increment() {
    _counter = _counter + 1;
    notifyListeners();
  }
}

void main() {
  group('BaseView::', () {
    late BaseView<TestViewModel> softwareUnderTest;

    setUp(() {
      softwareUnderTest = BaseView(
        builder: (_, __, ___) => const SizedBox(),
        viewModel: TestViewModel(),
      );
    });

    Future<void> setUpTestWidgetTree(WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: softwareUnderTest));
    }

    testWidgets('When widget is inflated, coupled viewModel is launched', (tester) async {
      // Setup

      // Execution
      await setUpTestWidgetTree(tester);

      // Verification
      expect(softwareUnderTest.viewModel._initExecuted, equals(true));
    });

    testWidgets('When widget is inflated, hierarchy specified by the builder is inflated', (tester) async {
      // Setup
      final _testKey = GlobalKey();
      softwareUnderTest = BaseView(
        builder: (_, __, ___) {
          return Container(key: _testKey);
        },
        viewModel: TestViewModel(),
      );

      // Execution
      await setUpTestWidgetTree(tester);

      // Verification
      expect(find.byKey(_testKey), findsOneWidget);
    });

    testWidgets('When coupled viewModel sends a notification, widget is rebuilt', (tester) async {
      // Setup
      const _initialValue = 0;
      const _expectedValue = 1;
      final softwareUnderTest = BaseView<StatefulViewModel>(
        builder: (_, viewModel, ___) {
          return Text(viewModel._counter.toString());
        },
        viewModel: StatefulViewModel(),
      );
      await tester.pumpWidget(MaterialApp(home: softwareUnderTest));

      // Execution
      softwareUnderTest.viewModel.increment();

      // Verification
      await tester.pump();
      expect(find.text(_initialValue.toString()), findsNothing);
      expect(find.text(_expectedValue.toString()), findsOneWidget);
    });

    testWidgets('If the viewModel is not busy, view doesn\'t show the loading state', (tester) async {
      // Setup
      await setUpTestWidgetTree(tester);

      // Execution

      // Verification
      // ignore: prefer_asserts_with_message
      assert(!softwareUnderTest.viewModel.busy);
      expect(find.byType(LoadingStateWrapper), findsNothing);
    });

    testWidgets('If the viewModel is busy, view shows the loading state', (tester) async {
      // Setup
      await setUpTestWidgetTree(tester);

      // Execution
      softwareUnderTest.viewModel.busy = true;

      // Verification
      await tester.pump();
      expect(find.byType(LoadingStateWrapper), findsOneWidget);
    });
  });
}
