import 'package:demo_books/model/book/book_relationships.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookRelationshipsConverter implements JsonConverter<BookRelationships, Map<String, dynamic>> {
  const BookRelationshipsConverter();

  @override
  BookRelationships fromJson(Map<String, dynamic> json) => BookRelationships.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookRelationships object) => object.toJson();
}
