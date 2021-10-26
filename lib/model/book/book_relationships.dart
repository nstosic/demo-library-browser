import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/converters/one_to_many_relationship_converter.dart';
import 'package:demo_books/model/converters/one_to_one_relationship_converter.dart';
import 'package:demo_books/model/meta/one_to_many_relationship.dart';
import 'package:demo_books/model/meta/one_to_one_relationship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_relationships.freezed.dart';
part 'book_relationships.g.dart';

@freezed
class BookRelationships extends BaseModel with _$BookRelationships {
  factory BookRelationships({
    @JsonKey(name: 'author') @OneToOneRelationshipConverter() required OneToOneRelationship author,
    @JsonKey(name: 'chapters')
    @OneToManyRelationshipConverter()
        required OneToManyRelationship chapters,
    @JsonKey(name: 'photos')
    @OneToManyRelationshipConverter()
        required OneToManyRelationship photos,
    @JsonKey(name: 'series') @OneToOneRelationshipConverter() required OneToOneRelationship series,
    @JsonKey(name: 'stores')
    @OneToManyRelationshipConverter()
        required OneToManyRelationship stores,
  }) = _BookRelationships;

  factory BookRelationships.fromJson(Map<String, dynamic> json) =>
      _$BookRelationshipsFromJson(json);
}
