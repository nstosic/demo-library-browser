import 'package:demo_books/model/book/book_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookLinksConverter implements JsonConverter<BookLinks, Map<String, dynamic>> {
  const BookLinksConverter();

  @override
  BookLinks fromJson(Map<String, dynamic> json) => BookLinks.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookLinks object) => object.toJson();
}
