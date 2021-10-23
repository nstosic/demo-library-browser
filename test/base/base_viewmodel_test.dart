import 'dart:async';

import 'package:demo_books/base/base_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

class TestViewModel extends BaseViewModel {
  bool _initExecuted = false;
  @override
  FutureOr<void> init() {
    _initExecuted = true;
  }
}

void main() {
  group('BaseViewModel::', () {
    late BaseViewModel softwareUnderTest;

    setUp(() {
      softwareUnderTest = TestViewModel();
    });

    tearDown(() {
      softwareUnderTest.dispose();
    });

    test('When viewModel is launched, it is initialized first', () async {
      // Setup
      final _testViewModel = softwareUnderTest as TestViewModel;

      // Execution
      await _testViewModel.launch(null);

      // Verification
      expect(_testViewModel._initExecuted, equals(true));
    });

    test('When viewModel is launched, onViewModelLaunched is executed', () async {
      // Setup
      var _onViewModelLaunchedExecuted = false;
      final _onViewModelLaunched = (TestViewModel _) {
        _onViewModelLaunchedExecuted = true;
      };

      // Execution
      await softwareUnderTest.launch(_onViewModelLaunched);

      // Verification
      expect(_onViewModelLaunchedExecuted, equals(true));
    });

    test('Listeners are notified when the busy value is changed', () {
      // Setup
      var _viewModelListenerTriggered = false;
      final _viewModelListener = () {
        _viewModelListenerTriggered = true;
      };
      softwareUnderTest.addListener(_viewModelListener);

      // Execution
      softwareUnderTest.busy = true;

      // Verification
      expect(_viewModelListenerTriggered, equals(true));
    });

    test('Listeners are notified when the error value is changed', () {
      // Setup
      var _viewModelListenerTriggered = false;
      final _viewModelListener = () {
        _viewModelListenerTriggered = true;
      };
      softwareUnderTest.addListener(_viewModelListener);

      // Execution
      softwareUnderTest.error = Exception();

      // Verification
      expect(_viewModelListenerTriggered, equals(true));
    });

    test('Result of the load operation is returned upon success', () async {
      // Setup
      const _expectedResult = 2021;
      final Future<int> _mockedTask = SynchronousFuture(_expectedResult);

      // Execution
      final _result = await softwareUnderTest.load(() => _mockedTask);

      // Verification
      expect(_result, equals(_expectedResult));
    });

    test('No error is reported if the load operation is successfully executed', () async {
      // Setup
      final Future<int> _mockedTask = SynchronousFuture(1);

      // Execution
      await softwareUnderTest.load(() => _mockedTask);

      // Verification
      expect(softwareUnderTest.error, isNull);
    });

    test('If the task that is performed throws an error, the load operation does the same', () async {
      // Setup
      final _expectedException = Exception();

      // Execution
      final loadOperation = softwareUnderTest.load(() async => throw _expectedException);

      // Verification
      await expectLater(loadOperation, throwsA(_expectedException));
    });

    test('If the task that is performed throws an error, the viewModel instance reports it', () async {
      // Setup
      final _expectedException = Exception();

      // Execution
      final loadOperation = softwareUnderTest.load(() async => throw _expectedException);

      // Verification
      await expectLater(loadOperation, throwsA(_expectedException));
      expect(softwareUnderTest.error, equals(_expectedException));
    });
  });
}
