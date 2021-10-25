// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'one_to_one_relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OneToOneRelationship _$OneToOneRelationshipFromJson(Map<String, dynamic> json) {
  return _OneToOneRelationship.fromJson(json);
}

/// @nodoc
class _$OneToOneRelationshipTearOff {
  const _$OneToOneRelationshipTearOff();

  _OneToOneRelationship call(
      {@JsonKey(name: 'data')
      @RelationshipConverter()
          required RelationshipData data}) {
    return _OneToOneRelationship(
      data: data,
    );
  }

  OneToOneRelationship fromJson(Map<String, Object?> json) {
    return OneToOneRelationship.fromJson(json);
  }
}

/// @nodoc
const $OneToOneRelationship = _$OneToOneRelationshipTearOff();

/// @nodoc
mixin _$OneToOneRelationship {
  @JsonKey(name: 'data')
  @RelationshipConverter()
  RelationshipData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneToOneRelationshipCopyWith<OneToOneRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneToOneRelationshipCopyWith<$Res> {
  factory $OneToOneRelationshipCopyWith(OneToOneRelationship value,
          $Res Function(OneToOneRelationship) then) =
      _$OneToOneRelationshipCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'data') @RelationshipConverter() RelationshipData data});
}

/// @nodoc
class _$OneToOneRelationshipCopyWithImpl<$Res>
    implements $OneToOneRelationshipCopyWith<$Res> {
  _$OneToOneRelationshipCopyWithImpl(this._value, this._then);

  final OneToOneRelationship _value;
  // ignore: unused_field
  final $Res Function(OneToOneRelationship) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RelationshipData,
    ));
  }
}

/// @nodoc
abstract class _$OneToOneRelationshipCopyWith<$Res>
    implements $OneToOneRelationshipCopyWith<$Res> {
  factory _$OneToOneRelationshipCopyWith(_OneToOneRelationship value,
          $Res Function(_OneToOneRelationship) then) =
      __$OneToOneRelationshipCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'data') @RelationshipConverter() RelationshipData data});
}

/// @nodoc
class __$OneToOneRelationshipCopyWithImpl<$Res>
    extends _$OneToOneRelationshipCopyWithImpl<$Res>
    implements _$OneToOneRelationshipCopyWith<$Res> {
  __$OneToOneRelationshipCopyWithImpl(
      _OneToOneRelationship _value, $Res Function(_OneToOneRelationship) _then)
      : super(_value, (v) => _then(v as _OneToOneRelationship));

  @override
  _OneToOneRelationship get _value => super._value as _OneToOneRelationship;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OneToOneRelationship(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RelationshipData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneToOneRelationship implements _OneToOneRelationship {
  _$_OneToOneRelationship(
      {@JsonKey(name: 'data') @RelationshipConverter() required this.data});

  factory _$_OneToOneRelationship.fromJson(Map<String, dynamic> json) =>
      _$$_OneToOneRelationshipFromJson(json);

  @override
  @JsonKey(name: 'data')
  @RelationshipConverter()
  final RelationshipData data;

  @override
  String toString() {
    return 'OneToOneRelationship(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OneToOneRelationship &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  _$OneToOneRelationshipCopyWith<_OneToOneRelationship> get copyWith =>
      __$OneToOneRelationshipCopyWithImpl<_OneToOneRelationship>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneToOneRelationshipToJson(this);
  }
}

abstract class _OneToOneRelationship implements OneToOneRelationship {
  factory _OneToOneRelationship(
      {@JsonKey(name: 'data')
      @RelationshipConverter()
          required RelationshipData data}) = _$_OneToOneRelationship;

  factory _OneToOneRelationship.fromJson(Map<String, dynamic> json) =
      _$_OneToOneRelationship.fromJson;

  @override
  @JsonKey(name: 'data')
  @RelationshipConverter()
  RelationshipData get data;
  @override
  @JsonKey(ignore: true)
  _$OneToOneRelationshipCopyWith<_OneToOneRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}
