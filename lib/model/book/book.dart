import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/book/book_attributes.dart';
import 'package:demo_books/model/book/book_links.dart';
import 'package:demo_books/model/book/book_relationships.dart';
import 'package:demo_books/model/converters/book_attributes_converter.dart';
import 'package:demo_books/model/converters/book_links_converter.dart';
import 'package:demo_books/model/converters/book_relationships_coverter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book extends BaseModel with _$Book {
  factory Book({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'attributes') @BookAttributesConverter() required BookAttributes attributes,
    @JsonKey(name: 'relationships')
    @BookRelationshipsConverter()
        required BookRelationships relationships,
    @JsonKey(name: 'links') @BookLinksConverter() required BookLinks links,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
