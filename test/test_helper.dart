import 'package:demo_books/model/book/author/book_author.dart';
import 'package:demo_books/model/book/author/book_author_attributes.dart';
import 'package:demo_books/model/book/author/book_author_links.dart';
import 'package:demo_books/model/book/author/book_author_relationships.dart';
import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/book_attributes.dart';
import 'package:demo_books/model/book/book_details.dart';
import 'package:demo_books/model/book/book_links.dart';
import 'package:demo_books/model/book/book_relationships.dart';
import 'package:demo_books/model/book/store/book_store.dart';
import 'package:demo_books/model/book/store/book_store_attributes.dart';
import 'package:demo_books/model/book/store/book_store_links.dart';
import 'package:demo_books/model/book/store/book_store_relationships.dart';
import 'package:demo_books/model/meta/one_to_many_relationship.dart';
import 'package:demo_books/model/meta/one_to_one_relationship.dart';
import 'package:demo_books/model/meta/relationship_data.dart';

abstract class TestHelper {
  static final testAuthor = BookAuthor(
    attributes: BookAuthorAttributes(
      name: 'Beryl Mosciski',
      birthplace: 'Switzerland',
      dateOfBirth: DateTime(1980, 08, 23),
      dateOfDeath: DateTime(1979, 04, 20),
    ),
    id: '2',
    links: BookAuthorLinks(selfUrl: '/authors/1'),
    relationships: BookAuthorRelationships(
      books: OneToManyRelationship(data: []),
      photos: OneToManyRelationship(
        data: [
          const RelationshipData(
            id: '1',
            type: 'photos',
          ),
          const RelationshipData(
            id: '2',
            type: 'photos',
          ),
        ],
      ),
    ),
  );

  static final testBook = Book(
    attributes: BookAttributes(
      datePublished: DateTime(2000, 03, 30),
      isbn: 3056793572,
      title: 'Borer LLC',
    ),
    id: '1',
    links: BookLinks(selfUrl: '/books/1'),
    relationships: BookRelationships(
      author: OneToOneRelationship(
        data: const RelationshipData(
          id: '10',
          type: 'authors',
        ),
      ),
      chapters: OneToManyRelationship(
        data: <RelationshipData>[],
      ),
      photos: OneToManyRelationship(
        data: const <RelationshipData>[
          RelationshipData(
            id: '151',
            type: 'photos',
          ),
          RelationshipData(
            id: '152',
            type: 'photos',
          ),
        ],
      ),
      series: OneToOneRelationship(
        data: const RelationshipData(
          id: '7',
          type: 'series',
        ),
      ),
      stores: OneToManyRelationship(
        data: const <RelationshipData>[
          RelationshipData(
            id: '42',
            type: 'stores',
          ),
        ],
      ),
    ),
  );

  static final testStore = BookStore(
    attributes: BookStoreAttributes(
      address: '1883 Kulas Keys',
      name: 'Store 967',
    ),
    id: '1',
    relationships: BookStoreRelationships(
      books: OneToManyRelationship(
        data: [
          const RelationshipData(
            id: '13',
            type: 'books',
          ),
        ],
      ),
      countries: OneToOneRelationship(
        data: const RelationshipData(
          id: 'AR',
          type: 'countries',
        ),
      ),
      photos: OneToManyRelationship(
        data: [
          const RelationshipData(
            id: '51',
            type: 'photos',
          ),
          const RelationshipData(
            id: '52',
            type: 'photos',
          ),
        ],
      ),
    ),
    links: BookStoreLinks(selfUrl: '/stores/1'),
  );

  static final testBookDetails = BookDetails(
    author: testAuthor,
    book: testBook,
    stores: [testStore],
  );
}
