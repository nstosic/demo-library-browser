import 'package:collection/collection.dart';
import 'package:demo_books/model/book/author/book_author.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/store/book_store.dart';
import 'package:meta/meta.dart';

@immutable
class BookDetails {
  const BookDetails({
    required this.author,
    required this.book,
    required this.stores,
  });

  final BookAuthor author;
  final Book book;
  final List<BookStore> stores;

  @override
  int get hashCode => author.hashCode ^ book.hashCode ^ stores.hashCode;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BookDetails &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.book, book) || other.book == book) &&
            const DeepCollectionEquality().equals(other.stores, stores));
  }
}
