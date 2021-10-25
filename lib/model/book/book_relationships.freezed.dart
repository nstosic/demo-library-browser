// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_relationships.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookRelationships _$BookRelationshipsFromJson(Map<String, dynamic> json) {
  return _BookRelationships.fromJson(json);
}

/// @nodoc
class _$BookRelationshipsTearOff {
  const _$BookRelationshipsTearOff();

  _BookRelationships call(
      {@JsonKey(name: 'author') required OneToOneRelationship author,
      @JsonKey(name: 'chapters') required OneToManyRelationship chapters,
      @JsonKey(name: 'photos') required OneToManyRelationship photos,
      @JsonKey(name: 'series') required OneToOneRelationship series,
      @JsonKey(name: 'stores') required OneToManyRelationship stores}) {
    return _BookRelationships(
      author: author,
      chapters: chapters,
      photos: photos,
      series: series,
      stores: stores,
    );
  }

  BookRelationships fromJson(Map<String, Object?> json) {
    return BookRelationships.fromJson(json);
  }
}

/// @nodoc
const $BookRelationships = _$BookRelationshipsTearOff();

/// @nodoc
mixin _$BookRelationships {
  @JsonKey(name: 'author')
  OneToOneRelationship get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'chapters')
  OneToManyRelationship get chapters => throw _privateConstructorUsedError;
  @JsonKey(name: 'photos')
  OneToManyRelationship get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'series')
  OneToOneRelationship get series => throw _privateConstructorUsedError;
  @JsonKey(name: 'stores')
  OneToManyRelationship get stores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookRelationshipsCopyWith<BookRelationships> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookRelationshipsCopyWith<$Res> {
  factory $BookRelationshipsCopyWith(
          BookRelationships value, $Res Function(BookRelationships) then) =
      _$BookRelationshipsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'author') OneToOneRelationship author,
      @JsonKey(name: 'chapters') OneToManyRelationship chapters,
      @JsonKey(name: 'photos') OneToManyRelationship photos,
      @JsonKey(name: 'series') OneToOneRelationship series,
      @JsonKey(name: 'stores') OneToManyRelationship stores});

  $OneToOneRelationshipCopyWith<$Res> get author;
  $OneToManyRelationshipCopyWith<$Res> get chapters;
  $OneToManyRelationshipCopyWith<$Res> get photos;
  $OneToOneRelationshipCopyWith<$Res> get series;
  $OneToManyRelationshipCopyWith<$Res> get stores;
}

/// @nodoc
class _$BookRelationshipsCopyWithImpl<$Res>
    implements $BookRelationshipsCopyWith<$Res> {
  _$BookRelationshipsCopyWithImpl(this._value, this._then);

  final BookRelationships _value;
  // ignore: unused_field
  final $Res Function(BookRelationships) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? chapters = freezed,
    Object? photos = freezed,
    Object? series = freezed,
    Object? stores = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as OneToOneRelationship,
      chapters: chapters == freezed
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as OneToOneRelationship,
      stores: stores == freezed
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
    ));
  }

  @override
  $OneToOneRelationshipCopyWith<$Res> get author {
    return $OneToOneRelationshipCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $OneToManyRelationshipCopyWith<$Res> get chapters {
    return $OneToManyRelationshipCopyWith<$Res>(_value.chapters, (value) {
      return _then(_value.copyWith(chapters: value));
    });
  }

  @override
  $OneToManyRelationshipCopyWith<$Res> get photos {
    return $OneToManyRelationshipCopyWith<$Res>(_value.photos, (value) {
      return _then(_value.copyWith(photos: value));
    });
  }

  @override
  $OneToOneRelationshipCopyWith<$Res> get series {
    return $OneToOneRelationshipCopyWith<$Res>(_value.series, (value) {
      return _then(_value.copyWith(series: value));
    });
  }

  @override
  $OneToManyRelationshipCopyWith<$Res> get stores {
    return $OneToManyRelationshipCopyWith<$Res>(_value.stores, (value) {
      return _then(_value.copyWith(stores: value));
    });
  }
}

/// @nodoc
abstract class _$BookRelationshipsCopyWith<$Res>
    implements $BookRelationshipsCopyWith<$Res> {
  factory _$BookRelationshipsCopyWith(
          _BookRelationships value, $Res Function(_BookRelationships) then) =
      __$BookRelationshipsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'author') OneToOneRelationship author,
      @JsonKey(name: 'chapters') OneToManyRelationship chapters,
      @JsonKey(name: 'photos') OneToManyRelationship photos,
      @JsonKey(name: 'series') OneToOneRelationship series,
      @JsonKey(name: 'stores') OneToManyRelationship stores});

  @override
  $OneToOneRelationshipCopyWith<$Res> get author;
  @override
  $OneToManyRelationshipCopyWith<$Res> get chapters;
  @override
  $OneToManyRelationshipCopyWith<$Res> get photos;
  @override
  $OneToOneRelationshipCopyWith<$Res> get series;
  @override
  $OneToManyRelationshipCopyWith<$Res> get stores;
}

/// @nodoc
class __$BookRelationshipsCopyWithImpl<$Res>
    extends _$BookRelationshipsCopyWithImpl<$Res>
    implements _$BookRelationshipsCopyWith<$Res> {
  __$BookRelationshipsCopyWithImpl(
      _BookRelationships _value, $Res Function(_BookRelationships) _then)
      : super(_value, (v) => _then(v as _BookRelationships));

  @override
  _BookRelationships get _value => super._value as _BookRelationships;

  @override
  $Res call({
    Object? author = freezed,
    Object? chapters = freezed,
    Object? photos = freezed,
    Object? series = freezed,
    Object? stores = freezed,
  }) {
    return _then(_BookRelationships(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as OneToOneRelationship,
      chapters: chapters == freezed
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as OneToOneRelationship,
      stores: stores == freezed
          ? _value.stores
          : stores // ignore: cast_nullable_to_non_nullable
              as OneToManyRelationship,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookRelationships implements _BookRelationships {
  _$_BookRelationships(
      {@JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'chapters') required this.chapters,
      @JsonKey(name: 'photos') required this.photos,
      @JsonKey(name: 'series') required this.series,
      @JsonKey(name: 'stores') required this.stores});

  factory _$_BookRelationships.fromJson(Map<String, dynamic> json) =>
      _$$_BookRelationshipsFromJson(json);

  @override
  @JsonKey(name: 'author')
  final OneToOneRelationship author;
  @override
  @JsonKey(name: 'chapters')
  final OneToManyRelationship chapters;
  @override
  @JsonKey(name: 'photos')
  final OneToManyRelationship photos;
  @override
  @JsonKey(name: 'series')
  final OneToOneRelationship series;
  @override
  @JsonKey(name: 'stores')
  final OneToManyRelationship stores;

  @override
  String toString() {
    return 'BookRelationships(author: $author, chapters: $chapters, photos: $photos, series: $series, stores: $stores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookRelationships &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.chapters, chapters) ||
                other.chapters == chapters) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.stores, stores) || other.stores == stores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, author, chapters, photos, series, stores);

  @JsonKey(ignore: true)
  @override
  _$BookRelationshipsCopyWith<_BookRelationships> get copyWith =>
      __$BookRelationshipsCopyWithImpl<_BookRelationships>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookRelationshipsToJson(this);
  }
}

abstract class _BookRelationships implements BookRelationships {
  factory _BookRelationships(
          {@JsonKey(name: 'author') required OneToOneRelationship author,
          @JsonKey(name: 'chapters') required OneToManyRelationship chapters,
          @JsonKey(name: 'photos') required OneToManyRelationship photos,
          @JsonKey(name: 'series') required OneToOneRelationship series,
          @JsonKey(name: 'stores') required OneToManyRelationship stores}) =
      _$_BookRelationships;

  factory _BookRelationships.fromJson(Map<String, dynamic> json) =
      _$_BookRelationships.fromJson;

  @override
  @JsonKey(name: 'author')
  OneToOneRelationship get author;
  @override
  @JsonKey(name: 'chapters')
  OneToManyRelationship get chapters;
  @override
  @JsonKey(name: 'photos')
  OneToManyRelationship get photos;
  @override
  @JsonKey(name: 'series')
  OneToOneRelationship get series;
  @override
  @JsonKey(name: 'stores')
  OneToManyRelationship get stores;
  @override
  @JsonKey(ignore: true)
  _$BookRelationshipsCopyWith<_BookRelationships> get copyWith =>
      throw _privateConstructorUsedError;
}
