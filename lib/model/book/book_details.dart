import 'package:demo_books/model/book/author/book_author.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/store/book_store.dart';
import 'package:meta/meta.dart';

@immutable
class BookDetails {
  const BookDetails({
    required this.book,
    required this.author,
    required this.stores,
  });

  final Book book;
  final BookAuthor author;
  final List<BookStore> stores;
}
