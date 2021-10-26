import 'package:demo_books/repo/books_repository.dart';
import 'package:demo_books/ui/details/book_details_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../test_helper.dart';

class MockBooksRepository extends Mock implements BooksRepository {}

void main() {
  group('BookDetailsViewModel::', () {
    late BooksRepository mockBooksRepository;
    late BookDetailsViewModel softwareUnderTest;

    setUpAll(() {
      registerFallbackValue(TestHelper.testBook);
    });

    setUp(() {
      mockBooksRepository = MockBooksRepository();
      softwareUnderTest = BookDetailsViewModel(TestHelper.testBook, mockBooksRepository);

      when(() => mockBooksRepository.fetchBookDetails(TestHelper.testBook))
          .thenAnswer((_) => Future.value(TestHelper.testBookDetails));
    });

    test('on init, fetchBookDetails is called', () async {
      // Setup

      // Execution
      await softwareUnderTest.init();

      // Verification
      verify(() => mockBooksRepository.fetchBookDetails(TestHelper.testBook)).called(1);
    });

    test('on init, if the fetchBookDetails call succeeds, detailed data is available', () async {
      // Setup

      // Execution
      await softwareUnderTest.init();

      // Verification
      expect(softwareUnderTest.details, equals(TestHelper.testBookDetails));
    });
  });
}
