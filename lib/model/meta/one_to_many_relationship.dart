import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/converters/list_relationship_converter.dart';
import 'package:demo_books/model/meta/relationship_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_to_many_relationship.freezed.dart';
part 'one_to_many_relationship.g.dart';

@freezed
class OneToManyRelationship extends BaseModel with _$OneToManyRelationship {
  factory OneToManyRelationship({
    @JsonKey(name: 'data') @ListRelationshipConverter() List<RelationshipData>? data,
  }) = _OneToManyRelationship;

  factory OneToManyRelationship.fromJson(Map<String, dynamic> json) => _$OneToManyRelationshipFromJson(json);
}
