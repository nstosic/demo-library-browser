import 'package:demo_books/model/meta/relationship_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RelationshipConverter implements JsonConverter<RelationshipData, Map<String, dynamic>> {
  const RelationshipConverter();

  @override
  RelationshipData fromJson(Map<String, dynamic> json) => RelationshipData.fromJson(json);

  @override
  Map<String, dynamic> toJson(RelationshipData object) => object.toJson();
}
