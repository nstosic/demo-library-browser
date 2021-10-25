import 'package:meta/meta.dart';

@immutable
class RelationshipData {
  const RelationshipData({
    required this.id,
    required this.type,
  });

  factory RelationshipData.fromJson(Map<String, dynamic> json) => RelationshipData(
        id: json['id'] as int,
        type: json['type'] as String,
      );

  final int id;
  final String type;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }
}
