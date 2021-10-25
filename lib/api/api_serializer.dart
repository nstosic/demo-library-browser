import 'package:demo_books/base/base_exception.dart';
import 'package:demo_books/model/base_model.dart';
import 'package:flutter/material.dart';

class ApiSerializer {
  @visibleForTesting
  final factories = <Type, BaseModel Function(Map<String, dynamic>)>{};

  T fromJson<T extends BaseModel>(Map<String, dynamic> json) {
    if (factories[T] != null) {
      return factories[T]!.call(json) as T;
    }
    throw BaseException('Model $T doesn\'t have an associated factory serializer');
  }

  List<T> fromJsonArray<T extends BaseModel>(List<Map<String, dynamic>> jsonArray) {
    return jsonArray.map((json) => fromJson<T>(json)).toList();
  }
}
