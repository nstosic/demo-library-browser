// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : BookAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : BookRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : BookLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
      'links': instance.links,
    };
