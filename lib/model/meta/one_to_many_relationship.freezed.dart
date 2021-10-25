// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'one_to_many_relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OneToManyRelationship _$OneToManyRelationshipFromJson(
    Map<String, dynamic> json) {
  return _OneToManyRelationship.fromJson(json);
}

/// @nodoc
class _$OneToManyRelationshipTearOff {
  const _$OneToManyRelationshipTearOff();

  _OneToManyRelationship call(
      {@JsonKey(name: 'data')
      @ListRelationshipConverter()
          required List<RelationshipData> data}) {
    return _OneToManyRelationship(
      data: data,
    );
  }

  OneToManyRelationship fromJson(Map<String, Object?> json) {
    return OneToManyRelationship.fromJson(json);
  }
}

/// @nodoc
const $OneToManyRelationship = _$OneToManyRelationshipTearOff();

/// @nodoc
mixin _$OneToManyRelationship {
  @JsonKey(name: 'data')
  @ListRelationshipConverter()
  List<RelationshipData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneToManyRelationshipCopyWith<OneToManyRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneToManyRelationshipCopyWith<$Res> {
  factory $OneToManyRelationshipCopyWith(OneToManyRelationship value,
          $Res Function(OneToManyRelationship) then) =
      _$OneToManyRelationshipCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'data')
      @ListRelationshipConverter()
          List<RelationshipData> data});
}

/// @nodoc
class _$OneToManyRelationshipCopyWithImpl<$Res>
    implements $OneToManyRelationshipCopyWith<$Res> {
  _$OneToManyRelationshipCopyWithImpl(this._value, this._then);

  final OneToManyRelationship _value;
  // ignore: unused_field
  final $Res Function(OneToManyRelationship) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RelationshipData>,
    ));
  }
}

/// @nodoc
abstract class _$OneToManyRelationshipCopyWith<$Res>
    implements $OneToManyRelationshipCopyWith<$Res> {
  factory _$OneToManyRelationshipCopyWith(_OneToManyRelationship value,
          $Res Function(_OneToManyRelationship) then) =
      __$OneToManyRelationshipCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'data')
      @ListRelationshipConverter()
          List<RelationshipData> data});
}

/// @nodoc
class __$OneToManyRelationshipCopyWithImpl<$Res>
    extends _$OneToManyRelationshipCopyWithImpl<$Res>
    implements _$OneToManyRelationshipCopyWith<$Res> {
  __$OneToManyRelationshipCopyWithImpl(_OneToManyRelationship _value,
      $Res Function(_OneToManyRelationship) _then)
      : super(_value, (v) => _then(v as _OneToManyRelationship));

  @override
  _OneToManyRelationship get _value => super._value as _OneToManyRelationship;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_OneToManyRelationship(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RelationshipData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneToManyRelationship implements _OneToManyRelationship {
  _$_OneToManyRelationship(
      {@JsonKey(name: 'data') @ListRelationshipConverter() required this.data});

  factory _$_OneToManyRelationship.fromJson(Map<String, dynamic> json) =>
      _$$_OneToManyRelationshipFromJson(json);

  @override
  @JsonKey(name: 'data')
  @ListRelationshipConverter()
  final List<RelationshipData> data;

  @override
  String toString() {
    return 'OneToManyRelationship(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OneToManyRelationship &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$OneToManyRelationshipCopyWith<_OneToManyRelationship> get copyWith =>
      __$OneToManyRelationshipCopyWithImpl<_OneToManyRelationship>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneToManyRelationshipToJson(this);
  }
}

abstract class _OneToManyRelationship implements OneToManyRelationship {
  factory _OneToManyRelationship(
      {@JsonKey(name: 'data')
      @ListRelationshipConverter()
          required List<RelationshipData> data}) = _$_OneToManyRelationship;

  factory _OneToManyRelationship.fromJson(Map<String, dynamic> json) =
      _$_OneToManyRelationship.fromJson;

  @override
  @JsonKey(name: 'data')
  @ListRelationshipConverter()
  List<RelationshipData> get data;
  @override
  @JsonKey(ignore: true)
  _$OneToManyRelationshipCopyWith<_OneToManyRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}
