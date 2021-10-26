// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_store_relationships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookStoreRelationships _$$_BookStoreRelationshipsFromJson(
        Map<String, dynamic> json) =>
    _$_BookStoreRelationships(
      photos: const OneToManyRelationshipConverter()
          .fromJson(json['photos'] as Map<String, dynamic>),
      books: const OneToManyRelationshipConverter()
          .fromJson(json['books'] as Map<String, dynamic>),
      countries: const OneToOneRelationshipConverter()
          .fromJson(json['countries'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookStoreRelationshipsToJson(
        _$_BookStoreRelationships instance) =>
    <String, dynamic>{
      'photos': const OneToManyRelationshipConverter().toJson(instance.photos),
      'books': const OneToManyRelationshipConverter().toJson(instance.books),
      'countries':
          const OneToOneRelationshipConverter().toJson(instance.countries),
    };
