import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/converters/one_to_many_relationship_converter.dart';
import 'package:demo_books/model/meta/one_to_many_relationship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_author_relationships.freezed.dart';
part 'book_author_relationships.g.dart';

@freezed
class BookAuthorRelationships extends BaseModel with _$BookAuthorRelationships {
  factory BookAuthorRelationships({
    @JsonKey(name: 'photos')
    @OneToManyRelationshipConverter()
        required OneToManyRelationship photos,
    @JsonKey(name: 'books') @OneToManyRelationshipConverter() required OneToManyRelationship books,
  }) = _BookAuthorRelationships;

  factory BookAuthorRelationships.fromJson(Map<String, dynamic> json) =>
      _$BookAuthorRelationshipsFromJson(json);
}
