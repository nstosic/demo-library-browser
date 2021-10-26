import 'dart:async';

import 'package:demo_books/base/base_viewmodel.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/book_details.dart';
import 'package:demo_books/repo/books_repository.dart';

class BookDetailsViewModel extends BaseViewModel {
  BookDetailsViewModel(this.book, this._booksRepository);

  final BooksRepository _booksRepository;
  final Book book;
  BookDetails? _details;
  BookDetails? get details => _details;

  @override
  FutureOr<void> init() async {
    final details = await load(() => _booksRepository.fetchBookDetails(book));
    _details = details;
    notifyListeners();
  }
}
