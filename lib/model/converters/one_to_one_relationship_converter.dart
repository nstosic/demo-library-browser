import 'package:demo_books/model/meta/one_to_one_relationship.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class OneToOneRelationshipConverter
    implements JsonConverter<OneToOneRelationship, Map<String, dynamic>> {
  const OneToOneRelationshipConverter();

  @override
  OneToOneRelationship fromJson(Map<String, dynamic> json) => OneToOneRelationship.fromJson(json);

  @override
  Map<String, dynamic> toJson(OneToOneRelationship object) => object.toJson();
}
