import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/model/book/book_attributes.dart';
import 'package:demo_books/model/book/book_links.dart';
import 'package:demo_books/model/book/book_relationships.dart';
import 'package:demo_books/model/meta/one_to_many_relationship.dart';
import 'package:demo_books/model/meta/one_to_one_relationship.dart';
import 'package:demo_books/model/meta/relationship_data.dart';

abstract class TestHelper {
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
}
