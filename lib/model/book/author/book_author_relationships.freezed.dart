// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_author_relationships.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookAuthorRelationships _$BookAuthorRelationshipsFromJson(
    Map<String, dynamic> json) {
  return _BookAuthorRelationships.fromJson(json);
}

/// @nodoc
class _$BookAuthorRelationshipsTearOff {
  const _$BookAuthorRelationshipsTearOff();

  _BookAuthorRelationships call(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship books}) {
    return _BookAuthorRelationships(
      photos: photos,
      books: books,
    );
  }

  BookAuthorRelationships fromJson(Map<String, Object?> json) {
    return BookAuthorRelationships.fromJson(json);
  }
}

/// @nodoc
const $BookAuthorRelationships = _$BookAuthorRelationshipsTearOff();

/// @nodoc
mixin _$BookAuthorRelationships {
  @JsonKey(name: 'photos')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'books')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookAuthorRelationshipsCopyWith<BookAuthorRelationships> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAuthorRelationshipsCopyWith<$Res> {
  factory $BookAuthorRelationshipsCopyWith(BookAuthorRelationships value,
          $Res Function(BookAuthorRelationships) then) =
      _$BookAuthorRelationshipsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          OneToManyRelationship books});

  $OneToManyRelationshipCopyWith<$Res> get photos;
  $OneToManyRelationshipCopyWith<$Res> get books;
}

/// @nodoc
class _$BookAuthorRelationshipsCopyWithImpl<$Res>
    implements $BookAuthorRelationshipsCopyWith<$Res> {
  _$BookAuthorRelationshipsCopyWithImpl(this._value, this._then);

  final BookAuthorRelationships _value;
  // ignore: unused_field
  final $Res Function(BookAuthorRelationships) _then;

  @override
  $Res call({
    Object? photos = freezed,
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
    ));
  }

  @override
  $OneToManyRelationshipCopyWith<$Res> get photos {
    return $OneToManyRelationshipCopyWith<$Res>(_value.photos, (value) {
      return _then(_value.copyWith(photos: value));
    });
  }

  @override
  $OneToManyRelationshipCopyWith<$Res> get books {
    return $OneToManyRelationshipCopyWith<$Res>(_value.books, (value) {
      return _then(_value.copyWith(books: value));
    });
  }
}

/// @nodoc
abstract class _$BookAuthorRelationshipsCopyWith<$Res>
    implements $BookAuthorRelationshipsCopyWith<$Res> {
  factory _$BookAuthorRelationshipsCopyWith(_BookAuthorRelationships value,
          $Res Function(_BookAuthorRelationships) then) =
      __$BookAuthorRelationshipsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          OneToManyRelationship books});

  @override
  $OneToManyRelationshipCopyWith<$Res> get photos;
  @override
  $OneToManyRelationshipCopyWith<$Res> get books;
}

/// @nodoc
class __$BookAuthorRelationshipsCopyWithImpl<$Res>
    extends _$BookAuthorRelationshipsCopyWithImpl<$Res>
    implements _$BookAuthorRelationshipsCopyWith<$Res> {
  __$BookAuthorRelationshipsCopyWithImpl(_BookAuthorRelationships _value,
      $Res Function(_BookAuthorRelationships) _then)
      : super(_value, (v) => _then(v as _BookAuthorRelationships));

  @override
  _BookAuthorRelationships get _value =>
      super._value as _BookAuthorRelationships;

  @override
  $Res call({
    Object? photos = freezed,
    Object? books = freezed,
  }) {
    return _then(_BookAuthorRelationships(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookAuthorRelationships implements _BookAuthorRelationships {
  _$_BookAuthorRelationships(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          required this.photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          required this.books});

  factory _$_BookAuthorRelationships.fromJson(Map<String, dynamic> json) =>
      _$$_BookAuthorRelationshipsFromJson(json);

  @override
  @JsonKey(name: 'photos')
  @OneToManyRelationshipConverter()
  final OneToManyRelationship photos;
  @override
  @JsonKey(name: 'books')
  @OneToManyRelationshipConverter()
  final OneToManyRelationship books;

  @override
  String toString() {
    return 'BookAuthorRelationships(photos: $photos, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookAuthorRelationships &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.books, books) || other.books == books));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photos, books);

  @JsonKey(ignore: true)
  @override
  _$BookAuthorRelationshipsCopyWith<_BookAuthorRelationships> get copyWith =>
      __$BookAuthorRelationshipsCopyWithImpl<_BookAuthorRelationships>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookAuthorRelationshipsToJson(this);
  }
}

abstract class _BookAuthorRelationships implements BookAuthorRelationships {
  factory _BookAuthorRelationships(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship books}) = _$_BookAuthorRelationships;

  factory _BookAuthorRelationships.fromJson(Map<String, dynamic> json) =
      _$_BookAuthorRelationships.fromJson;

  @override
  @JsonKey(name: 'photos')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get photos;
  @override
  @JsonKey(name: 'books')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get books;
  @override
  @JsonKey(ignore: true)
  _$BookAuthorRelationshipsCopyWith<_BookAuthorRelationships> get copyWith =>
      throw _privateConstructorUsedError;
}
