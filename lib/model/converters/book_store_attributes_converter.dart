import 'package:demo_books/model/book/store/book_store_attributes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookStoreAttributesConverter
    implements JsonConverter<BookStoreAttributes, Map<String, dynamic>> {
  const BookStoreAttributesConverter();

  @override
  BookStoreAttributes fromJson(Map<String, dynamic> json) => BookStoreAttributes.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookStoreAttributes object) => object.toJson();
}
