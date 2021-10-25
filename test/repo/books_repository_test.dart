import 'package:demo_books/api/api_client.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/book_links.dart';
import 'package:demo_books/repo/books_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockApiClient extends Mock implements ApiClient {}

void main() {
  group('BooksRepository::', () {
    late ApiClient mockApiClient;
    late BooksRepository softwareUnderTest;

    setUp(() {
      mockApiClient = MockApiClient();
      when(() => mockApiClient.getRemoteCollection<Book>(url: any(named: 'url')))
          .thenAnswer((_) => Future.value([]));
      when(() => mockApiClient.getRemoteDocument<Book>(url: any(named: 'url')))
          .thenAnswer((_) => Future.value(Book(id: 1)));
      softwareUnderTest = BooksRepository(mockApiClient);
    });

    test('fetchBooks targets the correct url', () async {
      // Setup

      // Execution
      await softwareUnderTest.fetchBooks();

      // Verification
      verify(() => mockApiClient.getRemoteCollection<Book>(url: BooksRepositoryUrls.books))
          .called(1);
    });

    test('fetchBook targets the correct url', () async {
      // Setup
      final testBook = Book(
        id: 1,
        links: BookLinks(selfUrl: '/testUrl'),
      );

      // Execution
      await softwareUnderTest.fetchBook(testBook);

      // Verification
      verify(() => mockApiClient.getRemoteDocument<Book>(url: testBook.links!.selfUrl!)).called(1);
    });
  });
}
