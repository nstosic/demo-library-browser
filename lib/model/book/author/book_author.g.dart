// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookAuthor _$$_BookAuthorFromJson(Map<String, dynamic> json) =>
    _$_BookAuthor(
      id: json['id'] as String,
      attributes: const BookAuthorAttributesConverter()
          .fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: const BookAuthorRelationshipsConverter()
          .fromJson(json['relationships'] as Map<String, dynamic>),
      links: const BookAuthorLinksConverter()
          .fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookAuthorToJson(_$_BookAuthor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes':
          const BookAuthorAttributesConverter().toJson(instance.attributes),
      'relationships': const BookAuthorRelationshipsConverter()
          .toJson(instance.relationships),
      'links': const BookAuthorLinksConverter().toJson(instance.links),
    };
