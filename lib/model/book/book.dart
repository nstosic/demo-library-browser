import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/book/book_attributes.dart';
import 'package:demo_books/model/book/book_links.dart';
import 'package:demo_books/model/book/book_relationships.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book extends BaseModel with _$Book {
  factory Book({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'attributes') BookAttributes? attributes,
    @JsonKey(name: 'relationships') BookRelationships? relationships,
    @JsonKey(name: 'links') BookLinks? links,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
