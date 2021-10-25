// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as String,
      attributes:
          BookAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: BookRelationships.fromJson(
          json['relationships'] as Map<String, dynamic>),
      links: BookLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'relationships': instance.relationships,
      'links': instance.links,
    };
