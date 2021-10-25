import 'package:demo_books/model/meta/relationship_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ListRelationshipConverter implements JsonConverter<List<RelationshipData>, List<dynamic>> {
  const ListRelationshipConverter();

  @override
  List<RelationshipData> fromJson(List<dynamic> json) {
    return json
        .cast<Map<String, dynamic>>()
        .map((item) => RelationshipData.fromJson(item))
        .toList();
  }

  @override
  List<dynamic> toJson(List<RelationshipData> object) {
    return object.map((item) => item.toJson()).toList();
  }
}
