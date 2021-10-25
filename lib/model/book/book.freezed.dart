// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'attributes') BookAttributes? attributes,
      @JsonKey(name: 'relationships') BookRelationships? relationships,
      @JsonKey(name: 'links') BookLinks? links}) {
    return _Book(
      id: id,
      attributes: attributes,
      relationships: relationships,
      links: links,
    );
  }

  Book fromJson(Map<String, Object?> json) {
    return Book.fromJson(json);
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributes')
  BookAttributes? get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'relationships')
  BookRelationships? get relationships => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  BookLinks? get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'attributes') BookAttributes? attributes,
      @JsonKey(name: 'relationships') BookRelationships? relationships,
      @JsonKey(name: 'links') BookLinks? links});

  $BookAttributesCopyWith<$Res>? get attributes;
  $BookRelationshipsCopyWith<$Res>? get relationships;
  $BookLinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

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
              as int?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BookAttributes?,
      relationships: relationships == freezed
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as BookRelationships?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as BookLinks?,
    ));
  }

  @override
  $BookAttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $BookAttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }

  @override
  $BookRelationshipsCopyWith<$Res>? get relationships {
    if (_value.relationships == null) {
      return null;
    }

    return $BookRelationshipsCopyWith<$Res>(_value.relationships!, (value) {
      return _then(_value.copyWith(relationships: value));
    });
  }

  @override
  $BookLinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $BookLinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'attributes') BookAttributes? attributes,
      @JsonKey(name: 'relationships') BookRelationships? relationships,
      @JsonKey(name: 'links') BookLinks? links});

  @override
  $BookAttributesCopyWith<$Res>? get attributes;
  @override
  $BookRelationshipsCopyWith<$Res>? get relationships;
  @override
  $BookLinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? id = freezed,
    Object? attributes = freezed,
    Object? relationships = freezed,
    Object? links = freezed,
  }) {
    return _then(_Book(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as BookAttributes?,
      relationships: relationships == freezed
          ? _value.relationships
          : relationships // ignore: cast_nullable_to_non_nullable
              as BookRelationships?,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as BookLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  _$_Book(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'attributes') this.attributes,
      @JsonKey(name: 'relationships') this.relationships,
      @JsonKey(name: 'links') this.links});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'attributes')
  final BookAttributes? attributes;
  @override
  @JsonKey(name: 'relationships')
  final BookRelationships? relationships;
  @override
  @JsonKey(name: 'links')
  final BookLinks? links;

  @override
  String toString() {
    return 'Book(id: $id, attributes: $attributes, relationships: $relationships, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Book &&
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
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  factory _Book(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'attributes') BookAttributes? attributes,
      @JsonKey(name: 'relationships') BookRelationships? relationships,
      @JsonKey(name: 'links') BookLinks? links}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'attributes')
  BookAttributes? get attributes;
  @override
  @JsonKey(name: 'relationships')
  BookRelationships? get relationships;
  @override
  @JsonKey(name: 'links')
  BookLinks? get links;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}
