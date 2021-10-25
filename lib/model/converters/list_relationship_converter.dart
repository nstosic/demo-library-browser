import 'package:demo_books/model/meta/relationship_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ListRelationshipConverter implements JsonConverter<List<RelationshipData>, List<Map<String, dynamic>>> {
  const ListRelationshipConverter();

  @override
  List<RelationshipData> fromJson(List<Map<String, dynamic>> json) {
    return json.map((item) => RelationshipData.fromJson(item)).toList();
  }

  @override
  List<Map<String, dynamic>> toJson(List<RelationshipData> object) {
    return object.map((item) => item.toJson()).toList();
  }
}
