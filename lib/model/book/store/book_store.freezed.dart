// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookStore _$BookStoreFromJson(Map<String, dynamic> json) {
  return _BookStore.fromJson(json);
}

/// @nodoc
class _$BookStoreTearOff {
  const _$BookStoreTearOff();

  _BookStore call(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'attributes')
      @BookStoreAttributesConverter()
          required BookStoreAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookStoreRelationshipsConverter()
          required BookStoreRelationships relationships,
      @JsonKey(name: 'links')
      @BookStoreLinksConverter()
          required BookStoreLinks links}) {
    return _BookStore(
      id: id,
      attributes: attributes,
      relationships: relationships,
      links: links,
    );
  }

  BookStore fromJson(Map<String, Object?> json) {
    return BookStore.fromJson(json);
  }
}

/// @nodoc
const $BookStore = _$BookStoreTearOff();

/// @nodoc
mixin _$BookStore {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  @BookStoreAttributesConverter()
  BookStoreAttributes get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationships')
  @BookStoreRelationshipsConverter()
  BookStoreRelationships get relationships =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  @BookStoreLinksConverter()
  BookStoreLinks get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookStoreCopyWith<BookStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStoreCopyWith<$Res> {
  factory $BookStoreCopyWith(BookStore value, $Res Function(BookStore) then) =
      _$BookStoreCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'attributes')
      @BookStoreAttributesConverter()
          BookStoreAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookStoreRelationshipsConverter()
          BookStoreRelationships relationships,
      @JsonKey(name: 'links')
      @BookStoreLinksConverter()
          BookStoreLinks links});

  $BookStoreAttributesCopyWith<$Res> get attributes;
  $BookStoreRelationshipsCopyWith<$Res> get relationships;
  $BookStoreLinksCopyWith<$Res> get links;
}

/// @nodoc
class _$BookStoreCopyWithImpl<$Res> implements $BookStoreCopyWith<$Res> {
  _$BookStoreCopyWithImpl(this._value, this._then);

  final BookStore _value;
  // ignore: unused_field
  final $Res Function(BookStore) _then;

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
              as BookStoreAttributes,
      relationships: relationships == freezed
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as BookStoreRelationships,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as BookStoreLinks,
    ));
  }

  @override
  $BookStoreAttributesCopyWith<$Res> get attributes {
    return $BookStoreAttributesCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }

  @override
  $BookStoreRelationshipsCopyWith<$Res> get relationships {
    return $BookStoreRelationshipsCopyWith<$Res>(_value.relationships, (value) {
      return _then(_value.copyWith(relationships: value));
    });
  }

  @override
  $BookStoreLinksCopyWith<$Res> get links {
    return $BookStoreLinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$BookStoreCopyWith<$Res> implements $BookStoreCopyWith<$Res> {
  factory _$BookStoreCopyWith(
          _BookStore value, $Res Function(_BookStore) then) =
      __$BookStoreCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'attributes')
      @BookStoreAttributesConverter()
          BookStoreAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookStoreRelationshipsConverter()
          BookStoreRelationships relationships,
      @JsonKey(name: 'links')
      @BookStoreLinksConverter()
          BookStoreLinks links});

  @override
  $BookStoreAttributesCopyWith<$Res> get attributes;
  @override
  $BookStoreRelationshipsCopyWith<$Res> get relationships;
  @override
  $BookStoreLinksCopyWith<$Res> get links;
}

/// @nodoc
class __$BookStoreCopyWithImpl<$Res> extends _$BookStoreCopyWithImpl<$Res>
    implements _$BookStoreCopyWith<$Res> {
  __$BookStoreCopyWithImpl(_BookStore _value, $Res Function(_BookStore) _then)
      : super(_value, (v) => _then(v as _BookStore));

  @override
  _BookStore get _value => super._value as _BookStore;

  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
    Object? relationships = freezed,
    Object? links = freezed,
  }) {
    return _then(_BookStore(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BookStoreAttributes,
      relationships: relationships == freezed
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as BookStoreRelationships,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as BookStoreLinks,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookStore implements _BookStore {
  _$_BookStore(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'attributes')
      @BookStoreAttributesConverter()
          required this.attributes,
      @JsonKey(name: 'relationships')
      @BookStoreRelationshipsConverter()
          required this.relationships,
      @JsonKey(name: 'links')
      @BookStoreLinksConverter()
          required this.links});

  factory _$_BookStore.fromJson(Map<String, dynamic> json) =>
      _$$_BookStoreFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'attributes')
  @BookStoreAttributesConverter()
  final BookStoreAttributes attributes;
  @override
  @JsonKey(name: 'relationships')
  @BookStoreRelationshipsConverter()
  final BookStoreRelationships relationships;
  @override
  @JsonKey(name: 'links')
  @BookStoreLinksConverter()
  final BookStoreLinks links;

  @override
  String toString() {
    return 'BookStore(id: $id, attributes: $attributes, relationships: $relationships, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookStore &&
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
  _$BookStoreCopyWith<_BookStore> get copyWith =>
      __$BookStoreCopyWithImpl<_BookStore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookStoreToJson(this);
  }
}

abstract class _BookStore implements BookStore {
  factory _BookStore(
      {@JsonKey(name: 'id')
          required String id,
      @JsonKey(name: 'attributes')
      @BookStoreAttributesConverter()
          required BookStoreAttributes attributes,
      @JsonKey(name: 'relationships')
      @BookStoreRelationshipsConverter()
          required BookStoreRelationships relationships,
      @JsonKey(name: 'links')
      @BookStoreLinksConverter()
          required BookStoreLinks links}) = _$_BookStore;

  factory _BookStore.fromJson(Map<String, dynamic> json) =
      _$_BookStore.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'attributes')
  @BookStoreAttributesConverter()
  BookStoreAttributes get attributes;
  @override
  @JsonKey(name: 'relationships')
  @BookStoreRelationshipsConverter()
  BookStoreRelationships get relationships;
  @override
  @JsonKey(name: 'links')
  @BookStoreLinksConverter()
  BookStoreLinks get links;
  @override
  @JsonKey(ignore: true)
  _$BookStoreCopyWith<_BookStore> get copyWith =>
      throw _privateConstructorUsedError;
}
