// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_store_relationships.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookStoreRelationships _$BookStoreRelationshipsFromJson(
    Map<String, dynamic> json) {
  return _BookStoreRelationships.fromJson(json);
}

/// @nodoc
class _$BookStoreRelationshipsTearOff {
  const _$BookStoreRelationshipsTearOff();

  _BookStoreRelationships call(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship books,
      @JsonKey(name: 'countries')
      @OneToOneRelationshipConverter()
          required OneToOneRelationship countries}) {
    return _BookStoreRelationships(
      photos: photos,
      books: books,
      countries: countries,
    );
  }

  BookStoreRelationships fromJson(Map<String, Object?> json) {
    return BookStoreRelationships.fromJson(json);
  }
}

/// @nodoc
const $BookStoreRelationships = _$BookStoreRelationshipsTearOff();

/// @nodoc
mixin _$BookStoreRelationships {
  @JsonKey(name: 'photos')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'books')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get books => throw _privateConstructorUsedError;
  @JsonKey(name: 'countries')
  @OneToOneRelationshipConverter()
  OneToOneRelationship get countries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookStoreRelationshipsCopyWith<BookStoreRelationships> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStoreRelationshipsCopyWith<$Res> {
  factory $BookStoreRelationshipsCopyWith(BookStoreRelationships value,
          $Res Function(BookStoreRelationships) then) =
      _$BookStoreRelationshipsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          OneToManyRelationship books,
      @JsonKey(name: 'countries')
      @OneToOneRelationshipConverter()
          OneToOneRelationship countries});

  $OneToManyRelationshipCopyWith<$Res> get photos;
  $OneToManyRelationshipCopyWith<$Res> get books;
  $OneToOneRelationshipCopyWith<$Res> get countries;
}

/// @nodoc
class _$BookStoreRelationshipsCopyWithImpl<$Res>
    implements $BookStoreRelationshipsCopyWith<$Res> {
  _$BookStoreRelationshipsCopyWithImpl(this._value, this._then);

  final BookStoreRelationships _value;
  // ignore: unused_field
  final $Res Function(BookStoreRelationships) _then;

  @override
  $Res call({
    Object? photos = freezed,
    Object? books = freezed,
    Object? countries = freezed,
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
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as OneToOneRelationship,
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

  @override
  $OneToOneRelationshipCopyWith<$Res> get countries {
    return $OneToOneRelationshipCopyWith<$Res>(_value.countries, (value) {
      return _then(_value.copyWith(countries: value));
    });
  }
}

/// @nodoc
abstract class _$BookStoreRelationshipsCopyWith<$Res>
    implements $BookStoreRelationshipsCopyWith<$Res> {
  factory _$BookStoreRelationshipsCopyWith(_BookStoreRelationships value,
          $Res Function(_BookStoreRelationships) then) =
      __$BookStoreRelationshipsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          OneToManyRelationship books,
      @JsonKey(name: 'countries')
      @OneToOneRelationshipConverter()
          OneToOneRelationship countries});

  @override
  $OneToManyRelationshipCopyWith<$Res> get photos;
  @override
  $OneToManyRelationshipCopyWith<$Res> get books;
  @override
  $OneToOneRelationshipCopyWith<$Res> get countries;
}

/// @nodoc
class __$BookStoreRelationshipsCopyWithImpl<$Res>
    extends _$BookStoreRelationshipsCopyWithImpl<$Res>
    implements _$BookStoreRelationshipsCopyWith<$Res> {
  __$BookStoreRelationshipsCopyWithImpl(_BookStoreRelationships _value,
      $Res Function(_BookStoreRelationships) _then)
      : super(_value, (v) => _then(v as _BookStoreRelationships));

  @override
  _BookStoreRelationships get _value => super._value as _BookStoreRelationships;

  @override
  $Res call({
    Object? photos = freezed,
    Object? books = freezed,
    Object? countries = freezed,
  }) {
    return _then(_BookStoreRelationships(
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      countries: countries == freezed
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as OneToOneRelationship,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookStoreRelationships implements _BookStoreRelationships {
  _$_BookStoreRelationships(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          required this.photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          required this.books,
      @JsonKey(name: 'countries')
      @OneToOneRelationshipConverter()
          required this.countries});

  factory _$_BookStoreRelationships.fromJson(Map<String, dynamic> json) =>
      _$$_BookStoreRelationshipsFromJson(json);

  @override
  @JsonKey(name: 'photos')
  @OneToManyRelationshipConverter()
  final OneToManyRelationship photos;
  @override
  @JsonKey(name: 'books')
  @OneToManyRelationshipConverter()
  final OneToManyRelationship books;
  @override
  @JsonKey(name: 'countries')
  @OneToOneRelationshipConverter()
  final OneToOneRelationship countries;

  @override
  String toString() {
    return 'BookStoreRelationships(photos: $photos, books: $books, countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookStoreRelationships &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.books, books) || other.books == books) &&
            (identical(other.countries, countries) ||
                other.countries == countries));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photos, books, countries);

  @JsonKey(ignore: true)
  @override
  _$BookStoreRelationshipsCopyWith<_BookStoreRelationships> get copyWith =>
      __$BookStoreRelationshipsCopyWithImpl<_BookStoreRelationships>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookStoreRelationshipsToJson(this);
  }
}

abstract class _BookStoreRelationships implements BookStoreRelationships {
  factory _BookStoreRelationships(
      {@JsonKey(name: 'photos')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship photos,
      @JsonKey(name: 'books')
      @OneToManyRelationshipConverter()
          required OneToManyRelationship books,
      @JsonKey(name: 'countries')
      @OneToOneRelationshipConverter()
          required OneToOneRelationship countries}) = _$_BookStoreRelationships;

  factory _BookStoreRelationships.fromJson(Map<String, dynamic> json) =
      _$_BookStoreRelationships.fromJson;

  @override
  @JsonKey(name: 'photos')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get photos;
  @override
  @JsonKey(name: 'books')
  @OneToManyRelationshipConverter()
  OneToManyRelationship get books;
  @override
  @JsonKey(name: 'countries')
  @OneToOneRelationshipConverter()
  OneToOneRelationship get countries;
  @override
  @JsonKey(ignore: true)
  _$BookStoreRelationshipsCopyWith<_BookStoreRelationships> get copyWith =>
      throw _privateConstructorUsedError;
}
