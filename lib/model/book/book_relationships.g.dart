// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_relationships.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookRelationships _$$_BookRelationshipsFromJson(Map<String, dynamic> json) =>
    _$_BookRelationships(
      author: const OneToOneRelationshipConverter()
          .fromJson(json['author'] as Map<String, dynamic>),
      chapters: const OneToManyRelationshipConverter()
          .fromJson(json['chapters'] as Map<String, dynamic>),
      photos: const OneToManyRelationshipConverter()
          .fromJson(json['photos'] as Map<String, dynamic>),
      series: const OneToOneRelationshipConverter()
          .fromJson(json['series'] as Map<String, dynamic>),
      stores: const OneToManyRelationshipConverter()
          .fromJson(json['stores'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookRelationshipsToJson(
        _$_BookRelationships instance) =>
    <String, dynamic>{
      'author': const OneToOneRelationshipConverter().toJson(instance.author),
      'chapters':
          const OneToManyRelationshipConverter().toJson(instance.chapters),
      'photos': const OneToManyRelationshipConverter().toJson(instance.photos),
      'series': const OneToOneRelationshipConverter().toJson(instance.series),
      'stores': const OneToManyRelationshipConverter().toJson(instance.stores),
    };
