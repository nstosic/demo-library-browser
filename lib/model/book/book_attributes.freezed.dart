// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookAttributes _$BookAttributesFromJson(Map<String, dynamic> json) {
  return _BookAttributes.fromJson(json);
}

/// @nodoc
class _$BookAttributesTearOff {
  const _$BookAttributesTearOff();

  _BookAttributes call(
      {@JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'date_published')
      @StringToDateConverter()
          required DateTime datePublished,
      @JsonKey(name: 'isbn')
          required int isbn}) {
    return _BookAttributes(
      title: title,
      datePublished: datePublished,
      isbn: isbn,
    );
  }

  BookAttributes fromJson(Map<String, Object?> json) {
    return BookAttributes.fromJson(json);
  }
}

/// @nodoc
const $BookAttributes = _$BookAttributesTearOff();

/// @nodoc
mixin _$BookAttributes {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_published')
  @StringToDateConverter()
  DateTime get datePublished => throw _privateConstructorUsedError;
  @JsonKey(name: 'isbn')
  int get isbn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookAttributesCopyWith<BookAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAttributesCopyWith<$Res> {
  factory $BookAttributesCopyWith(
          BookAttributes value, $Res Function(BookAttributes) then) =
      _$BookAttributesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'date_published')
      @StringToDateConverter()
          DateTime datePublished,
      @JsonKey(name: 'isbn')
          int isbn});
}

/// @nodoc
class _$BookAttributesCopyWithImpl<$Res>
    implements $BookAttributesCopyWith<$Res> {
  _$BookAttributesCopyWithImpl(this._value, this._then);

  final BookAttributes _value;
  // ignore: unused_field
  final $Res Function(BookAttributes) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? datePublished = freezed,
    Object? isbn = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: datePublished == freezed
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$BookAttributesCopyWith<$Res>
    implements $BookAttributesCopyWith<$Res> {
  factory _$BookAttributesCopyWith(
          _BookAttributes value, $Res Function(_BookAttributes) then) =
      __$BookAttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'date_published')
      @StringToDateConverter()
          DateTime datePublished,
      @JsonKey(name: 'isbn')
          int isbn});
}

/// @nodoc
class __$BookAttributesCopyWithImpl<$Res>
    extends _$BookAttributesCopyWithImpl<$Res>
    implements _$BookAttributesCopyWith<$Res> {
  __$BookAttributesCopyWithImpl(
      _BookAttributes _value, $Res Function(_BookAttributes) _then)
      : super(_value, (v) => _then(v as _BookAttributes));

  @override
  _BookAttributes get _value => super._value as _BookAttributes;

  @override
  $Res call({
    Object? title = freezed,
    Object? datePublished = freezed,
    Object? isbn = freezed,
  }) {
    return _then(_BookAttributes(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: datePublished == freezed
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookAttributes implements _BookAttributes {
  _$_BookAttributes(
      {@JsonKey(name: 'title')
          required this.title,
      @JsonKey(name: 'date_published')
      @StringToDateConverter()
          required this.datePublished,
      @JsonKey(name: 'isbn')
          required this.isbn});

  factory _$_BookAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_BookAttributesFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'date_published')
  @StringToDateConverter()
  final DateTime datePublished;
  @override
  @JsonKey(name: 'isbn')
  final int isbn;

  @override
  String toString() {
    return 'BookAttributes(title: $title, datePublished: $datePublished, isbn: $isbn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookAttributes &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.datePublished, datePublished) ||
                other.datePublished == datePublished) &&
            (identical(other.isbn, isbn) || other.isbn == isbn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, datePublished, isbn);

  @JsonKey(ignore: true)
  @override
  _$BookAttributesCopyWith<_BookAttributes> get copyWith =>
      __$BookAttributesCopyWithImpl<_BookAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookAttributesToJson(this);
  }
}

abstract class _BookAttributes implements BookAttributes {
  factory _BookAttributes(
      {@JsonKey(name: 'title')
          required String title,
      @JsonKey(name: 'date_published')
      @StringToDateConverter()
          required DateTime datePublished,
      @JsonKey(name: 'isbn')
          required int isbn}) = _$_BookAttributes;

  factory _BookAttributes.fromJson(Map<String, dynamic> json) =
      _$_BookAttributes.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'date_published')
  @StringToDateConverter()
  DateTime get datePublished;
  @override
  @JsonKey(name: 'isbn')
  int get isbn;
  @override
  @JsonKey(ignore: true)
  _$BookAttributesCopyWith<_BookAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
