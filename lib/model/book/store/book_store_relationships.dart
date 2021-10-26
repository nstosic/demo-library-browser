import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/converters/one_to_many_relationship_converter.dart';
import 'package:demo_books/model/converters/one_to_one_relationship_converter.dart';
import 'package:demo_books/model/meta/one_to_many_relationship.dart';
import 'package:demo_books/model/meta/one_to_one_relationship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_store_relationships.freezed.dart';
part 'book_store_relationships.g.dart';

@freezed
class BookStoreRelationships extends BaseModel with _$BookStoreRelationships {
  factory BookStoreRelationships({
    @JsonKey(name: 'photos')
    @OneToManyRelationshipConverter()
        required OneToManyRelationship photos,
    @JsonKey(name: 'books') @OneToManyRelationshipConverter() required OneToManyRelationship books,
    @JsonKey(name: 'countries')
    @OneToOneRelationshipConverter()
        required OneToOneRelationship countries,
  }) = _BookStoreRelationships;

  factory BookStoreRelationships.fromJson(Map<String, dynamic> json) =>
      _$BookStoreRelationshipsFromJson(json);
}
