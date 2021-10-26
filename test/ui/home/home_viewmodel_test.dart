import 'package:collection/collection.dart';
import 'package:demo_books/repo/books_repository.dart';
import 'package:demo_books/repo/stores_repository.dart';
import 'package:demo_books/ui/home/home_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../test_helper.dart';

class MockBooksRepository extends Mock implements BooksRepository {}

class MockStoresRepository extends Mock implements StoresRepository {}

void main() {
  group('HomeViewModel::', () {
    late BooksRepository mockBooksRepository;
    late StoresRepository mockStoresRepository;
    late HomeViewModel softwareUnderTest;

    setUpAll(() {
      registerFallbackValue(TestHelper.testBook);
      registerFallbackValue(TestHelper.testStore);
    });

    setUp(() {
      mockBooksRepository = MockBooksRepository();
      mockStoresRepository = MockStoresRepository();
      softwareUnderTest = HomeViewModel(mockBooksRepository, mockStoresRepository);

      // Mocking BooksRepository responses
      when(() => mockBooksRepository.fetchBooks()).thenAnswer((_) => Future.value([]));
      when(() => mockBooksRepository.fetchBook(any()))
          .thenAnswer((_) => Future.value(TestHelper.testBook));

      // Mocking StoresRepository response
      when(() => mockStoresRepository.fetchBookStores())
          .thenAnswer((_) => Future.value([TestHelper.testStore]));
      when(() => mockStoresRepository.fetchBooksFromStore(any()))
          .thenAnswer((_) => Future.value([]));
    });

    test('on init, there isn\'t a store filter selected', () async {
      // Setup

      // Execution
      await softwareUnderTest.init();

      // Verification
      expect(softwareUnderTest.selectedStore, isNull);
    });

    test('on init, fetchBooks is called', () async {
      // Setup

      // Execution
      await softwareUnderTest.init();

      // Verification
      verify(() => mockBooksRepository.fetchBooks()).called(1);
    });

    test('if fetchBooks request in successful, its response data is persisted', () async {
      // Setup
      final expectedResponse = [TestHelper.testBook, TestHelper.testBook];
      when(() => mockBooksRepository.fetchBooks())
          .thenAnswer((_) => Future.value(expectedResponse));

      // Execution
      await softwareUnderTest.init();

      // Verification
      expect(const DeepCollectionEquality().equals(softwareUnderTest.data, expectedResponse),
          equals(true));
    });

    test('on init, fetchBookStores is called', () async {
      // Setup

      // Execution
      await softwareUnderTest.init();

      // Verification
      verify(() => mockStoresRepository.fetchBookStores()).called(1);
    });

    test('if fetchBookStores request in successful, its response data is persisted', () async {
      // Setup
      final expectedResponse = [TestHelper.testStore, TestHelper.testStore];
      when(() => mockStoresRepository.fetchBookStores())
          .thenAnswer((_) => Future.value(expectedResponse));

      // Execution
      await softwareUnderTest.init();

      // Verification
      expect(const DeepCollectionEquality().equals(softwareUnderTest.stores, expectedResponse),
          equals(true));
    });

    test('if the store is selected, appropriate data is requested', () async {
      // Setup
      softwareUnderTest.stores.add(TestHelper.testStore);

      // Execution
      await softwareUnderTest.onStoreSelected(TestHelper.testStore.id);

      // Verification
      verify(() => mockStoresRepository.fetchBooksFromStore(TestHelper.testStore)).called(1);
    });
  });
}
