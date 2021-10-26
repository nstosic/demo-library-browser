// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookAttributes _$$_BookAttributesFromJson(Map<String, dynamic> json) =>
    _$_BookAttributes(
      title: json['title'] as String,
      datePublished: const StringToDateConverter()
          .fromJson(json['date_published'] as String),
      isbn: json['isbn'] as int,
    );

Map<String, dynamic> _$$_BookAttributesToJson(_$_BookAttributes instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date_published':
          const StringToDateConverter().toJson(instance.datePublished),
      'isbn': instance.isbn,
    };
