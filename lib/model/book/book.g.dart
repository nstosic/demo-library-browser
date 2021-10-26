// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      id: json['id'] as String,
      attributes: const BookAttributesConverter()
          .fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: const BookRelationshipsConverter()
          .fromJson(json['relationships'] as Map<String, dynamic>),
      links: const BookLinksConverter()
          .fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': const BookAttributesConverter().toJson(instance.attributes),
      'relationships':
          const BookRelationshipsConverter().toJson(instance.relationships),
      'links': const BookLinksConverter().toJson(instance.links),
    };
