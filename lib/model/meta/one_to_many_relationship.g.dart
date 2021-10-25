// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_to_many_relationship.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OneToManyRelationship _$$_OneToManyRelationshipFromJson(
        Map<String, dynamic> json) =>
    _$_OneToManyRelationship(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RelationshipData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OneToManyRelationshipToJson(
        _$_OneToManyRelationship instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
