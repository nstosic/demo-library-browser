import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/book/author/book_author_attributes.dart';
import 'package:demo_books/model/book/author/book_author_links.dart';
import 'package:demo_books/model/book/author/book_author_relationships.dart';
import 'package:demo_books/model/converters/book_author_attributes_converter.dart';
import 'package:demo_books/model/converters/book_author_links_converter.dart';
import 'package:demo_books/model/converters/book_author_relationships_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_author.freezed.dart';
part 'book_author.g.dart';

@freezed
class BookAuthor extends BaseModel with _$BookAuthor {
  factory BookAuthor({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'attributes')
    @BookAuthorAttributesConverter()
        required BookAuthorAttributes attributes,
    @JsonKey(name: 'relationships')
    @BookAuthorRelationshipsConverter()
        required BookAuthorRelationships relationships,
    @JsonKey(name: 'links') @BookAuthorLinksConverter() required BookAuthorLinks links,
  }) = _BookAuthor;

  factory BookAuthor.fromJson(Map<String, dynamic> json) => _$BookAuthorFromJson(json);
}
