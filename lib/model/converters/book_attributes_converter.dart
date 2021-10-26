import 'package:demo_books/model/book/book_attributes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookAttributesConverter implements JsonConverter<BookAttributes, Map<String, dynamic>> {
  const BookAttributesConverter();

  @override
  BookAttributes fromJson(Map<String, dynamic> json) => BookAttributes.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookAttributes object) => object.toJson();
}
