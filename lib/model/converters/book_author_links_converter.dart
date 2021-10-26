import 'package:demo_books/model/book/author/book_author_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookAuthorLinksConverter implements JsonConverter<BookAuthorLinks, Map<String, dynamic>> {
  const BookAuthorLinksConverter();

  @override
  BookAuthorLinks fromJson(Map<String, dynamic> json) => BookAuthorLinks.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookAuthorLinks object) => object.toJson();
}
