import 'dart:async';

import 'package:demo_books/base/base_viewmodel.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/repo/books_repository.dart';
import 'package:demo_books/ui/navigation/navigation_parameters.dart';
import 'package:demo_books/ui/navigation/router.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel(this._booksRepository);

  final BooksRepository _booksRepository;

  final List<Book> data = <Book>[];

  @override
  FutureOr<void> init() async {
    await onRefresh();
  }

  Future<void> onRefresh() async {
    final result = await load(_booksRepository.fetchBooks);
    data.clear();
    data.addAll(result);
    notifyListeners();
  }

  void onItemPressed(int index) {
    final item = data[index];
    navigation.navigateTo<void>(
      Routes.bookDetails,
      arguments: BookDetailsParameters(item).toArguments(),
    );
  }
}
