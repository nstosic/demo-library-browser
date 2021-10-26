// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_store_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookStoreAttributes _$BookStoreAttributesFromJson(Map<String, dynamic> json) {
  return _BookStoreAttributes.fromJson(json);
}

/// @nodoc
class _$BookStoreAttributesTearOff {
  const _$BookStoreAttributesTearOff();

  _BookStoreAttributes call(
      {@JsonKey(name: 'name') required String name,
      @JsonKey(name: 'address') required String address}) {
    return _BookStoreAttributes(
      name: name,
      address: address,
    );
  }

  BookStoreAttributes fromJson(Map<String, Object?> json) {
    return BookStoreAttributes.fromJson(json);
  }
}

/// @nodoc
const $BookStoreAttributes = _$BookStoreAttributesTearOff();

/// @nodoc
mixin _$BookStoreAttributes {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookStoreAttributesCopyWith<BookStoreAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStoreAttributesCopyWith<$Res> {
  factory $BookStoreAttributesCopyWith(
          BookStoreAttributes value, $Res Function(BookStoreAttributes) then) =
      _$BookStoreAttributesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class _$BookStoreAttributesCopyWithImpl<$Res>
    implements $BookStoreAttributesCopyWith<$Res> {
  _$BookStoreAttributesCopyWithImpl(this._value, this._then);

  final BookStoreAttributes _value;
  // ignore: unused_field
  final $Res Function(BookStoreAttributes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BookStoreAttributesCopyWith<$Res>
    implements $BookStoreAttributesCopyWith<$Res> {
  factory _$BookStoreAttributesCopyWith(_BookStoreAttributes value,
          $Res Function(_BookStoreAttributes) then) =
      __$BookStoreAttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class __$BookStoreAttributesCopyWithImpl<$Res>
    extends _$BookStoreAttributesCopyWithImpl<$Res>
    implements _$BookStoreAttributesCopyWith<$Res> {
  __$BookStoreAttributesCopyWithImpl(
      _BookStoreAttributes _value, $Res Function(_BookStoreAttributes) _then)
      : super(_value, (v) => _then(v as _BookStoreAttributes));

  @override
  _BookStoreAttributes get _value => super._value as _BookStoreAttributes;

  @override
  $Res call({
    Object? name = freezed,
    Object? address = freezed,
  }) {
    return _then(_BookStoreAttributes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookStoreAttributes implements _BookStoreAttributes {
  _$_BookStoreAttributes(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'address') required this.address});

  factory _$_BookStoreAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_BookStoreAttributesFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String address;

  @override
  String toString() {
    return 'BookStoreAttributes(name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookStoreAttributes &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address);

  @JsonKey(ignore: true)
  @override
  _$BookStoreAttributesCopyWith<_BookStoreAttributes> get copyWith =>
      __$BookStoreAttributesCopyWithImpl<_BookStoreAttributes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookStoreAttributesToJson(this);
  }
}

abstract class _BookStoreAttributes implements BookStoreAttributes {
  factory _BookStoreAttributes(
          {@JsonKey(name: 'name') required String name,
          @JsonKey(name: 'address') required String address}) =
      _$_BookStoreAttributes;

  factory _BookStoreAttributes.fromJson(Map<String, dynamic> json) =
      _$_BookStoreAttributes.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(ignore: true)
  _$BookStoreAttributesCopyWith<_BookStoreAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
