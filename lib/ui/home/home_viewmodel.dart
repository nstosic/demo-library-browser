import 'dart:async';

import 'package:demo_books/base/base_viewmodel.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/store/book_store.dart';
import 'package:demo_books/repo/books_repository.dart';
import 'package:demo_books/repo/stores_repository.dart';
import 'package:demo_books/ui/navigation/navigation_parameters.dart';
import 'package:demo_books/ui/navigation/router.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel(this._booksRepository, this._storesRepository);

  final BooksRepository _booksRepository;
  final StoresRepository _storesRepository;

  final List<Book> data = <Book>[];
  final List<BookStore> stores = <BookStore>[];
  BookStore? _selectedStore;
  BookStore? get selectedStore => _selectedStore;

  Future<void> _refreshBookData() async {
    final result = await load(_booksRepository.fetchBooks);
    data.clear();
    data.addAll(result);
    notifyListeners();
  }

  Future<void> _refreshStoreData() async {
    final result = await load(_storesRepository.fetchBookStores);
    stores.clear();
    stores.addAll(result);
    notifyListeners();
  }

  @override
  FutureOr<void> init() async {
    await _refreshBookData();
    await _refreshStoreData();
  }

  void onItemPressed(int index) {
    final item = data[index];
    navigation.navigateTo<void>(
      Routes.bookDetails,
      arguments: BookDetailsParameters(item).toArguments(),
    );
  }

  Future<void> onRefresh() async {
    if (_selectedStore == null) {
      return _refreshBookData();
    } else {
      return onStoreSelected(_selectedStore!.id);
    }
  }

  Future<void> onStoreSelected(String id) async {
    if ((_selectedStore?.id ?? '') == id) {
      return;
    }
    if (id != '') {
      _selectedStore = stores.firstWhere((item) => item.id == id);
      final result = await load(() => _storesRepository.fetchBooksFromStore(_selectedStore!));
      data.clear();
      data.addAll(result);
      notifyListeners();
    } else {
      _selectedStore = null;
      await onRefresh();
    }
  }
}
