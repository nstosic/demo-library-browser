// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookStore _$$_BookStoreFromJson(Map<String, dynamic> json) => _$_BookStore(
      id: json['id'] as String,
      attributes: const BookStoreAttributesConverter()
          .fromJson(json['attributes'] as Map<String, dynamic>),
      relationships: const BookStoreRelationshipsConverter()
          .fromJson(json['relationships'] as Map<String, dynamic>),
      links: const BookStoreLinksConverter()
          .fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookStoreToJson(_$_BookStore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes':
          const BookStoreAttributesConverter().toJson(instance.attributes),
      'relationships': const BookStoreRelationshipsConverter()
          .toJson(instance.relationships),
      'links': const BookStoreLinksConverter().toJson(instance.links),
    };
