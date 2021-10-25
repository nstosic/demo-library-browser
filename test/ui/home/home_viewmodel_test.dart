import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/repo/books_repository.dart';
import 'package:demo_books/ui/home/home_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../test_helper.dart';

class MockBooksRepository extends Mock implements BooksRepository {}

void main() {
  group('HomeViewModel::', () {
    late BooksRepository mockBooksRepository;
    late HomeViewModel softwareUnderTest;

    setUpAll(() {
      registerFallbackValue(TestHelper.testBook);
    });

    setUp(() {
      mockBooksRepository = MockBooksRepository();
      softwareUnderTest = HomeViewModel(mockBooksRepository);

      when(() => mockBooksRepository.fetchBooks()).thenAnswer((_) => Future.value([]));
      when(() => mockBooksRepository.fetchBook(any()))
          .thenAnswer((_) => Future.value(TestHelper.testBook));
    });

    test('on init, books repository is called', () async {
      // Setup

      // Execution
      await softwareUnderTest.init();

      // Verification
      verify(() => mockBooksRepository.fetchBooks()).called(1);
    });
  });
}
