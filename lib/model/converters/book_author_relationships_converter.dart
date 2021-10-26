import 'package:demo_books/model/book/author/book_author_relationships.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookAuthorRelationshipsConverter
    implements JsonConverter<BookAuthorRelationships, Map<String, dynamic>> {
  const BookAuthorRelationshipsConverter();

  @override
  BookAuthorRelationships fromJson(Map<String, dynamic> json) =>
      BookAuthorRelationships.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookAuthorRelationships object) => object.toJson();
}
