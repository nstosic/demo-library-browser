import 'package:demo_books/api/api_client.dart';
import 'package:demo_books/model/book/author/book_author.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/book_details.dart';
import 'package:demo_books/model/book/store/book_store.dart';
import 'package:meta/meta.dart';

@visibleForTesting
abstract class BooksRepositoryUrls {
  static const authors = '/authors';
  static const books = '/books';
  static const stores = '/stores';
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

  Future<BookDetails> fetchBookDetails(Book book) async {
    final author = await _apiClient.getRemoteDocument<BookAuthor>(
        url: '${BooksRepositoryUrls.authors}/${book.relationships.author.data.id}');
    final stores =
        await _apiClient.getRemoteCollection<BookStore>(url: '${BooksRepositoryUrls.stores}/');
    return BookDetails(
      book: book,
      author: author,
      stores: stores,
    );
  }
}
