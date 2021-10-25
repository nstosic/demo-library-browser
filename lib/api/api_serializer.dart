import 'package:demo_books/base/base_exception.dart';
import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/book_attributes.dart';
import 'package:demo_books/model/book/book_links.dart';
import 'package:demo_books/model/book/book_relationships.dart';
import 'package:demo_books/model/meta/one_to_many_relationship.dart';
import 'package:demo_books/model/meta/one_to_one_relationship.dart';
import 'package:flutter/material.dart';

class ApiSerializer {
  @visibleForTesting
  final factories = <Type, BaseModel Function(Map<String, dynamic>)>{
    Book: (json) => Book.fromJson(json),
    BookAttributes: (json) => BookAttributes.fromJson(json),
    BookLinks: (json) => BookLinks.fromJson(json),
    BookRelationships: (json) => BookRelationships.fromJson(json),
    OneToOneRelationship: (json) => OneToOneRelationship.fromJson(json),
    OneToManyRelationship: (json) => OneToManyRelationship.fromJson(json),
  };

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
