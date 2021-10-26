// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_author_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookAuthorAttributes _$$_BookAuthorAttributesFromJson(
        Map<String, dynamic> json) =>
    _$_BookAuthorAttributes(
      name: json['name'] as String,
      birthplace: json['birthplace'] as String,
      dateOfBirth: const StringToDateConverter()
          .fromJson(json['date_of_birth'] as String),
      dateOfDeath: json['date_of_death'] == null
          ? null
          : DateTime.parse(json['date_of_death'] as String),
    );

Map<String, dynamic> _$$_BookAuthorAttributesToJson(
        _$_BookAuthorAttributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'birthplace': instance.birthplace,
      'date_of_birth':
          const StringToDateConverter().toJson(instance.dateOfBirth),
      'date_of_death': instance.dateOfDeath?.toIso8601String(),
    };
