import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/converters/relationship_converter.dart';
import 'package:demo_books/model/meta/relationship_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_to_one_relationship.freezed.dart';
part 'one_to_one_relationship.g.dart';

@freezed
class OneToOneRelationship extends BaseModel with _$OneToOneRelationship {
  factory OneToOneRelationship({
    @JsonKey(name: 'data') @RelationshipConverter() required RelationshipData data,
  }) = _OneToOneRelationship;

  factory OneToOneRelationship.fromJson(Map<String, dynamic> json) => _$OneToOneRelationshipFromJson(json);
}
