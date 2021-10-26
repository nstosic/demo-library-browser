import 'package:demo_books/model/meta/one_to_many_relationship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class OneToManyRelationshipConverter
    implements JsonConverter<OneToManyRelationship, Map<String, dynamic>> {
  const OneToManyRelationshipConverter();

  @override
  OneToManyRelationship fromJson(Map<String, dynamic> json) => OneToManyRelationship.fromJson(json);

  @override
  Map<String, dynamic> toJson(OneToManyRelationship object) => object.toJson();
}
