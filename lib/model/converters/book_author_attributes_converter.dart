import 'package:demo_books/model/book/author/book_author_attributes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookAuthorAttributesConverter
    implements JsonConverter<BookAuthorAttributes, Map<String, dynamic>> {
  const BookAuthorAttributesConverter();
  @override
  BookAuthorAttributes fromJson(Map<String, dynamic> json) => BookAuthorAttributes.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookAuthorAttributes object) => object.toJson();
}
