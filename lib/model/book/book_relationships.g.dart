// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_relationships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookRelationships _$$_BookRelationshipsFromJson(Map<String, dynamic> json) =>
    _$_BookRelationships(
      author:
          OneToOneRelationship.fromJson(json['author'] as Map<String, dynamic>),
      chapters: OneToManyRelationship.fromJson(
          json['chapters'] as Map<String, dynamic>),
      photos: OneToManyRelationship.fromJson(
          json['photos'] as Map<String, dynamic>),
      series:
          OneToOneRelationship.fromJson(json['series'] as Map<String, dynamic>),
      stores: OneToManyRelationship.fromJson(
          json['stores'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookRelationshipsToJson(
        _$_BookRelationships instance) =>
    <String, dynamic>{
      'author': instance.author,
      'chapters': instance.chapters,
      'photos': instance.photos,
      'series': instance.series,
      'stores': instance.stores,
    };
