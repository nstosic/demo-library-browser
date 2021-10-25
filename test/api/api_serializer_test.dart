import 'package:collection/collection.dart';
import 'package:demo_books/api/api_serializer.dart';
import 'package:demo_books/base/base_exception.dart';
import 'package:demo_books/model/base_model.dart';
import 'package:flutter_test/flutter_test.dart';

class TestModel extends BaseModel {
  TestModel._(this._originalJson);

  TestModel.fromJson(Map<String, dynamic> json) : this._(json);

  final Map<String, dynamic> _originalJson;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{};
  }
}

void main() {
  group('ApiSerializer::', () {
    late ApiSerializer softwareUnderTest;

    setUp(() {
      softwareUnderTest = ApiSerializer();
    });

    test('If the serialization factory is registered, the data model is returned', () {
      // Setup
      softwareUnderTest.factories[TestModel] = (json) => TestModel.fromJson(json);
      final _actualJson = <String, dynamic>{};

      // Execution
      final result = softwareUnderTest.fromJson<TestModel>(_actualJson);

      // Verification
      expect(const DeepCollectionEquality().equals(result._originalJson, _actualJson), equals(true));
    });

    test('If the serialization factory is not registered, an exception is thrown', () {
      // Setup
      final _actualJson = <String, dynamic>{};

      // Execution

      // Verification
      expect(() => softwareUnderTest.fromJson<TestModel>(_actualJson), throwsA(isInstanceOf<BaseException>()));
    });
  });
}
