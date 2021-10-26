// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookAuthor _$BookAuthorFromJson(Map<String, dynamic> json) {
  return _BookAuthor.fromJson(json);
}

/// @nodoc
class _$BookAuthorTearOff {
  const _$BookAuthorTearOff();

  _BookAuthor call(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'attributes')
      @BookAuthorAttributesConverter()
          required BookAuthorAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookAuthorRelationshipsConverter()
          required BookAuthorRelationships relationships,
      @JsonKey(name: 'links')
      @BookAuthorLinksConverter()
          required BookAuthorLinks links}) {
    return _BookAuthor(
      id: id,
      attributes: attributes,
      relationships: relationships,
      links: links,
    );
  }

  BookAuthor fromJson(Map<String, Object?> json) {
    return BookAuthor.fromJson(json);
  }
}

/// @nodoc
const $BookAuthor = _$BookAuthorTearOff();

/// @nodoc
mixin _$BookAuthor {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  @BookAuthorAttributesConverter()
  BookAuthorAttributes get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationships')
  @BookAuthorRelationshipsConverter()
  BookAuthorRelationships get relationships =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  @BookAuthorLinksConverter()
  BookAuthorLinks get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookAuthorCopyWith<BookAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAuthorCopyWith<$Res> {
  factory $BookAuthorCopyWith(
          BookAuthor value, $Res Function(BookAuthor) then) =
      _$BookAuthorCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'attributes')
      @BookAuthorAttributesConverter()
          BookAuthorAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookAuthorRelationshipsConverter()
          BookAuthorRelationships relationships,
      @JsonKey(name: 'links')
      @BookAuthorLinksConverter()
          BookAuthorLinks links});

  $BookAuthorAttributesCopyWith<$Res> get attributes;
  $BookAuthorRelationshipsCopyWith<$Res> get relationships;
  $BookAuthorLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$BookAuthorCopyWithImpl<$Res> implements $BookAuthorCopyWith<$Res> {
  _$BookAuthorCopyWithImpl(this._value, this._then);

  final BookAuthor _value;
  // ignore: unused_field
  final $Res Function(BookAuthor) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
    Object? relationships = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BookAuthorAttributes,
      relationships: relationships == freezed
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as BookAuthorRelationships,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as BookAuthorLinks,
    ));
  }

  @override
  $BookAuthorAttributesCopyWith<$Res> get attributes {
    return $BookAuthorAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }

  @override
  $BookAuthorRelationshipsCopyWith<$Res> get relationships {
    return $BookAuthorRelationshipsCopyWith<$Res>(_value.relationships,
        (value) {
      return _then(_value.copyWith(relationships: value));
    });
  }

  @override
  $BookAuthorLinksCopyWith<$Res> get links {
    return $BookAuthorLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$BookAuthorCopyWith<$Res> implements $BookAuthorCopyWith<$Res> {
  factory _$BookAuthorCopyWith(
          _BookAuthor value, $Res Function(_BookAuthor) then) =
      __$BookAuthorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'attributes')
      @BookAuthorAttributesConverter()
          BookAuthorAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookAuthorRelationshipsConverter()
          BookAuthorRelationships relationships,
      @JsonKey(name: 'links')
      @BookAuthorLinksConverter()
          BookAuthorLinks links});

  @override
  $BookAuthorAttributesCopyWith<$Res> get attributes;
  @override
  $BookAuthorRelationshipsCopyWith<$Res> get relationships;
  @override
  $BookAuthorLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$BookAuthorCopyWithImpl<$Res> extends _$BookAuthorCopyWithImpl<$Res>
    implements _$BookAuthorCopyWith<$Res> {
  __$BookAuthorCopyWithImpl(
      _BookAuthor _value, $Res Function(_BookAuthor) _then)
      : super(_value, (v) => _then(v as _BookAuthor));

  @override
  _BookAuthor get _value => super._value as _BookAuthor;

  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
    Object? relationships = freezed,
    Object? links = freezed,
  }) {
    return _then(_BookAuthor(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BookAuthorAttributes,
      relationships: relationships == freezed
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as BookAuthorRelationships,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as BookAuthorLinks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookAuthor implements _BookAuthor {
  _$_BookAuthor(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'attributes')
      @BookAuthorAttributesConverter()
          required this.attributes,
      @JsonKey(name: 'relationships')
      @BookAuthorRelationshipsConverter()
          required this.relationships,
      @JsonKey(name: 'links')
      @BookAuthorLinksConverter()
          required this.links});

  factory _$_BookAuthor.fromJson(Map<String, dynamic> json) =>
      _$$_BookAuthorFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'attributes')
  @BookAuthorAttributesConverter()
  final BookAuthorAttributes attributes;
  @override
  @JsonKey(name: 'relationships')
  @BookAuthorRelationshipsConverter()
  final BookAuthorRelationships relationships;
  @override
  @JsonKey(name: 'links')
  @BookAuthorLinksConverter()
  final BookAuthorLinks links;

  @override
  String toString() {
    return 'BookAuthor(id: $id, attributes: $attributes, relationships: $relationships, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookAuthor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            (identical(other.relationships, relationships) ||
                other.relationships == relationships) &&
            (identical(other.links, links) || other.links == links));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, attributes, relationships, links);

  @JsonKey(ignore: true)
  @override
  _$BookAuthorCopyWith<_BookAuthor> get copyWith =>
      __$BookAuthorCopyWithImpl<_BookAuthor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookAuthorToJson(this);
  }
}

abstract class _BookAuthor implements BookAuthor {
  factory _BookAuthor(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'attributes')
      @BookAuthorAttributesConverter()
          required BookAuthorAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookAuthorRelationshipsConverter()
          required BookAuthorRelationships relationships,
      @JsonKey(name: 'links')
      @BookAuthorLinksConverter()
          required BookAuthorLinks links}) = _$_BookAuthor;

  factory _BookAuthor.fromJson(Map<String, dynamic> json) =
      _$_BookAuthor.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'attributes')
  @BookAuthorAttributesConverter()
  BookAuthorAttributes get attributes;
  @override
  @JsonKey(name: 'relationships')
  @BookAuthorRelationshipsConverter()
  BookAuthorRelationships get relationships;
  @override
  @JsonKey(name: 'links')
  @BookAuthorLinksConverter()
  BookAuthorLinks get links;
  @override
  @JsonKey(ignore: true)
  _$BookAuthorCopyWith<_BookAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}
