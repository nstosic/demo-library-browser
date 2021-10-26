// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_author_relationships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookAuthorRelationships _$$_BookAuthorRelationshipsFromJson(
        Map<String, dynamic> json) =>
    _$_BookAuthorRelationships(
      photos: const OneToManyRelationshipConverter()
          .fromJson(json['photos'] as Map<String, dynamic>),
      books: const OneToManyRelationshipConverter()
          .fromJson(json['books'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookAuthorRelationshipsToJson(
        _$_BookAuthorRelationships instance) =>
    <String, dynamic>{
      'photos': const OneToManyRelationshipConverter().toJson(instance.photos),
      'books': const OneToManyRelationshipConverter().toJson(instance.books),
    };
