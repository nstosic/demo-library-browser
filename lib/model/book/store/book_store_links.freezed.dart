// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_store_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookStoreLinks _$BookStoreLinksFromJson(Map<String, dynamic> json) {
  return _BookStoreLinks.fromJson(json);
}

/// @nodoc
class _$BookStoreLinksTearOff {
  const _$BookStoreLinksTearOff();

  _BookStoreLinks call({@JsonKey(name: 'self') required String selfUrl}) {
    return _BookStoreLinks(
      selfUrl: selfUrl,
    );
  }

  BookStoreLinks fromJson(Map<String, Object?> json) {
    return BookStoreLinks.fromJson(json);
  }
}

/// @nodoc
const $BookStoreLinks = _$BookStoreLinksTearOff();

/// @nodoc
mixin _$BookStoreLinks {
  @JsonKey(name: 'self')
  String get selfUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookStoreLinksCopyWith<BookStoreLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStoreLinksCopyWith<$Res> {
  factory $BookStoreLinksCopyWith(
          BookStoreLinks value, $Res Function(BookStoreLinks) then) =
      _$BookStoreLinksCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'self') String selfUrl});
}

/// @nodoc
class _$BookStoreLinksCopyWithImpl<$Res>
    implements $BookStoreLinksCopyWith<$Res> {
  _$BookStoreLinksCopyWithImpl(this._value, this._then);

  final BookStoreLinks _value;
  // ignore: unused_field
  final $Res Function(BookStoreLinks) _then;

  @override
  $Res call({
    Object? selfUrl = freezed,
  }) {
    return _then(_value.copyWith(
      selfUrl: selfUrl == freezed
          ? _value.selfUrl
          : selfUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookStoreLinksCopyWith<$Res>
    implements $BookStoreLinksCopyWith<$Res> {
  factory _$BookStoreLinksCopyWith(
          _BookStoreLinks value, $Res Function(_BookStoreLinks) then) =
      __$BookStoreLinksCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'self') String selfUrl});
}

/// @nodoc
class __$BookStoreLinksCopyWithImpl<$Res>
    extends _$BookStoreLinksCopyWithImpl<$Res>
    implements _$BookStoreLinksCopyWith<$Res> {
  __$BookStoreLinksCopyWithImpl(
      _BookStoreLinks _value, $Res Function(_BookStoreLinks) _then)
      : super(_value, (v) => _then(v as _BookStoreLinks));

  @override
  _BookStoreLinks get _value => super._value as _BookStoreLinks;

  @override
  $Res call({
    Object? selfUrl = freezed,
  }) {
    return _then(_BookStoreLinks(
      selfUrl: selfUrl == freezed
          ? _value.selfUrl
          : selfUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookStoreLinks implements _BookStoreLinks {
  _$_BookStoreLinks({@JsonKey(name: 'self') required this.selfUrl});

  factory _$_BookStoreLinks.fromJson(Map<String, dynamic> json) =>
      _$$_BookStoreLinksFromJson(json);

  @override
  @JsonKey(name: 'self')
  final String selfUrl;

  @override
  String toString() {
    return 'BookStoreLinks(selfUrl: $selfUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookStoreLinks &&
            (identical(other.selfUrl, selfUrl) || other.selfUrl == selfUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selfUrl);

  @JsonKey(ignore: true)
  @override
  _$BookStoreLinksCopyWith<_BookStoreLinks> get copyWith =>
      __$BookStoreLinksCopyWithImpl<_BookStoreLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookStoreLinksToJson(this);
  }
}

abstract class _BookStoreLinks implements BookStoreLinks {
  factory _BookStoreLinks({@JsonKey(name: 'self') required String selfUrl}) =
      _$_BookStoreLinks;

  factory _BookStoreLinks.fromJson(Map<String, dynamic> json) =
      _$_BookStoreLinks.fromJson;

  @override
  @JsonKey(name: 'self')
  String get selfUrl;
  @override
  @JsonKey(ignore: true)
  _$BookStoreLinksCopyWith<_BookStoreLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
