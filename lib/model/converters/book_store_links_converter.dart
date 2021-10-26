import 'package:demo_books/model/book/store/book_store_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BookStoreLinksConverter implements JsonConverter<BookStoreLinks, Map<String, dynamic>> {
  const BookStoreLinksConverter();

  @override
  BookStoreLinks fromJson(Map<String, dynamic> json) => BookStoreLinks.fromJson(json);

  @override
  Map<String, dynamic> toJson(BookStoreLinks object) => object.toJson();
}
