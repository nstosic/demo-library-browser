import 'package:demo_books/api/api_client.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:meta/meta.dart';

@visibleForTesting
abstract class BooksRepositoryUrls {
  static const books = '/books';
}

class BooksRepository {
  BooksRepository(this._apiClient);

  final ApiClient _apiClient;

  Future<List<Book>> fetchBooks() async {
    final response = _apiClient.getRemoteCollection<Book>(url: BooksRepositoryUrls.books);
    return response;
  }

  Future<Book> fetchBook(Book book) async {
    final response = _apiClient.getRemoteDocument<Book>(url: book.links.selfUrl);
    return response;
  }
}
