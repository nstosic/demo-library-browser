// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookLinks _$BookLinksFromJson(Map<String, dynamic> json) {
  return _BookLinks.fromJson(json);
}

/// @nodoc
class _$BookLinksTearOff {
  const _$BookLinksTearOff();

  _BookLinks call({@JsonKey(name: 'self') required String selfUrl}) {
    return _BookLinks(
      selfUrl: selfUrl,
    );
  }

  BookLinks fromJson(Map<String, Object?> json) {
    return BookLinks.fromJson(json);
  }
}

/// @nodoc
const $BookLinks = _$BookLinksTearOff();

/// @nodoc
mixin _$BookLinks {
  @JsonKey(name: 'self')
  String get selfUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookLinksCopyWith<BookLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookLinksCopyWith<$Res> {
  factory $BookLinksCopyWith(BookLinks value, $Res Function(BookLinks) then) =
      _$BookLinksCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'self') String selfUrl});
}

/// @nodoc
class _$BookLinksCopyWithImpl<$Res> implements $BookLinksCopyWith<$Res> {
  _$BookLinksCopyWithImpl(this._value, this._then);

  final BookLinks _value;
  // ignore: unused_field
  final $Res Function(BookLinks) _then;

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
abstract class _$BookLinksCopyWith<$Res> implements $BookLinksCopyWith<$Res> {
  factory _$BookLinksCopyWith(
          _BookLinks value, $Res Function(_BookLinks) then) =
      __$BookLinksCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'self') String selfUrl});
}

/// @nodoc
class __$BookLinksCopyWithImpl<$Res> extends _$BookLinksCopyWithImpl<$Res>
    implements _$BookLinksCopyWith<$Res> {
  __$BookLinksCopyWithImpl(_BookLinks _value, $Res Function(_BookLinks) _then)
      : super(_value, (v) => _then(v as _BookLinks));

  @override
  _BookLinks get _value => super._value as _BookLinks;

  @override
  $Res call({
    Object? selfUrl = freezed,
  }) {
    return _then(_BookLinks(
      selfUrl: selfUrl == freezed
          ? _value.selfUrl
          : selfUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookLinks implements _BookLinks {
  _$_BookLinks({@JsonKey(name: 'self') required this.selfUrl});

  factory _$_BookLinks.fromJson(Map<String, dynamic> json) =>
      _$$_BookLinksFromJson(json);

  @override
  @JsonKey(name: 'self')
  final String selfUrl;

  @override
  String toString() {
    return 'BookLinks(selfUrl: $selfUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookLinks &&
            (identical(other.selfUrl, selfUrl) || other.selfUrl == selfUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selfUrl);

  @JsonKey(ignore: true)
  @override
  _$BookLinksCopyWith<_BookLinks> get copyWith =>
      __$BookLinksCopyWithImpl<_BookLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookLinksToJson(this);
  }
}

abstract class _BookLinks implements BookLinks {
  factory _BookLinks({@JsonKey(name: 'self') required String selfUrl}) =
      _$_BookLinks;

  factory _BookLinks.fromJson(Map<String, dynamic> json) =
      _$_BookLinks.fromJson;

  @override
  @JsonKey(name: 'self')
  String get selfUrl;
  @override
  @JsonKey(ignore: true)
  _$BookLinksCopyWith<_BookLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
