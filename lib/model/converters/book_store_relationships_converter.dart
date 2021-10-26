import 'package:demo_books/model/book/store/book_store_relationships.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookStoreRelationshipsConverter
    implements JsonConverter<BookStoreRelationships, Map<String, dynamic>> {
  const BookStoreRelationshipsConverter();

  @override
  BookStoreRelationships fromJson(Map<String, dynamic> json) =>
      BookStoreRelationships.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookStoreRelationships object) => object.toJson();
}
