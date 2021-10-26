import 'package:demo_books/api/api_client.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/store/book_store.dart';
import 'package:meta/meta.dart';

@visibleForTesting
class StoresRepositoryUrls {
  static const stores = '/stores';
}

class StoresRepository {
  StoresRepository(this._apiClient);

  final ApiClient _apiClient;

  Future<List<BookStore>> fetchBookStores() async {
    final response =
        await _apiClient.getRemoteCollection<BookStore>(url: StoresRepositoryUrls.stores);
    return response;
  }

  Future<BookStore> fetchBookStore(BookStore store) async {
    final response = await _apiClient.getRemoteDocument<BookStore>(url: store.links.selfUrl);
    return response;
  }

  Future<List<Book>> fetchBooksFromStore(BookStore store) async {
    final response =
        await _apiClient.getRemoteCollection<Book>(url: '${store.links.selfUrl}/books');
    return response;
  }
}
