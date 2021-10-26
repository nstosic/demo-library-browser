// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_author_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookAuthorAttributes _$BookAuthorAttributesFromJson(Map<String, dynamic> json) {
  return _BookAuthorAttributes.fromJson(json);
}

/// @nodoc
class _$BookAuthorAttributesTearOff {
  const _$BookAuthorAttributesTearOff();

  _BookAuthorAttributes call(
      {@JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'birthplace')
          required String birthplace,
      @JsonKey(name: 'date_of_birth')
      @StringToDateConverter()
          required DateTime dateOfBirth,
      @JsonKey(name: 'date_of_death')
      @StringToDateConverter()
          DateTime? dateOfDeath}) {
    return _BookAuthorAttributes(
      name: name,
      birthplace: birthplace,
      dateOfBirth: dateOfBirth,
      dateOfDeath: dateOfDeath,
    );
  }

  BookAuthorAttributes fromJson(Map<String, Object?> json) {
    return BookAuthorAttributes.fromJson(json);
  }
}

/// @nodoc
const $BookAuthorAttributes = _$BookAuthorAttributesTearOff();

/// @nodoc
mixin _$BookAuthorAttributes {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthplace')
  String get birthplace => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  @StringToDateConverter()
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_death')
  @StringToDateConverter()
  DateTime? get dateOfDeath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookAuthorAttributesCopyWith<BookAuthorAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAuthorAttributesCopyWith<$Res> {
  factory $BookAuthorAttributesCopyWith(BookAuthorAttributes value,
          $Res Function(BookAuthorAttributes) then) =
      _$BookAuthorAttributesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'birthplace')
          String birthplace,
      @JsonKey(name: 'date_of_birth')
      @StringToDateConverter()
          DateTime dateOfBirth,
      @JsonKey(name: 'date_of_death')
      @StringToDateConverter()
          DateTime? dateOfDeath});
}

/// @nodoc
class _$BookAuthorAttributesCopyWithImpl<$Res>
    implements $BookAuthorAttributesCopyWith<$Res> {
  _$BookAuthorAttributesCopyWithImpl(this._value, this._then);

  final BookAuthorAttributes _value;
  // ignore: unused_field
  final $Res Function(BookAuthorAttributes) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? birthplace = freezed,
    Object? dateOfBirth = freezed,
    Object? dateOfDeath = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthplace: birthplace == freezed
          ? _value.birthplace
          : birthplace // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfDeath: dateOfDeath == freezed
          ? _value.dateOfDeath
          : dateOfDeath // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$BookAuthorAttributesCopyWith<$Res>
    implements $BookAuthorAttributesCopyWith<$Res> {
  factory _$BookAuthorAttributesCopyWith(_BookAuthorAttributes value,
          $Res Function(_BookAuthorAttributes) then) =
      __$BookAuthorAttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'birthplace')
          String birthplace,
      @JsonKey(name: 'date_of_birth')
      @StringToDateConverter()
          DateTime dateOfBirth,
      @JsonKey(name: 'date_of_death')
      @StringToDateConverter()
          DateTime? dateOfDeath});
}

/// @nodoc
class __$BookAuthorAttributesCopyWithImpl<$Res>
    extends _$BookAuthorAttributesCopyWithImpl<$Res>
    implements _$BookAuthorAttributesCopyWith<$Res> {
  __$BookAuthorAttributesCopyWithImpl(
      _BookAuthorAttributes _value, $Res Function(_BookAuthorAttributes) _then)
      : super(_value, (v) => _then(v as _BookAuthorAttributes));

  @override
  _BookAuthorAttributes get _value => super._value as _BookAuthorAttributes;

  @override
  $Res call({
    Object? name = freezed,
    Object? birthplace = freezed,
    Object? dateOfBirth = freezed,
    Object? dateOfDeath = freezed,
  }) {
    return _then(_BookAuthorAttributes(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthplace: birthplace == freezed
          ? _value.birthplace
          : birthplace // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfDeath: dateOfDeath == freezed
          ? _value.dateOfDeath
          : dateOfDeath // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookAuthorAttributes implements _BookAuthorAttributes {
  _$_BookAuthorAttributes(
      {@JsonKey(name: 'name')
          required this.name,
      @JsonKey(name: 'birthplace')
          required this.birthplace,
      @JsonKey(name: 'date_of_birth')
      @StringToDateConverter()
          required this.dateOfBirth,
      @JsonKey(name: 'date_of_death')
      @StringToDateConverter()
          this.dateOfDeath});

  factory _$_BookAuthorAttributes.fromJson(Map<String, dynamic> json) =>
      _$$_BookAuthorAttributesFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'birthplace')
  final String birthplace;
  @override
  @JsonKey(name: 'date_of_birth')
  @StringToDateConverter()
  final DateTime dateOfBirth;
  @override
  @JsonKey(name: 'date_of_death')
  @StringToDateConverter()
  final DateTime? dateOfDeath;

  @override
  String toString() {
    return 'BookAuthorAttributes(name: $name, birthplace: $birthplace, dateOfBirth: $dateOfBirth, dateOfDeath: $dateOfDeath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookAuthorAttributes &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthplace, birthplace) ||
                other.birthplace == birthplace) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.dateOfDeath, dateOfDeath) ||
                other.dateOfDeath == dateOfDeath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, birthplace, dateOfBirth, dateOfDeath);

  @JsonKey(ignore: true)
  @override
  _$BookAuthorAttributesCopyWith<_BookAuthorAttributes> get copyWith =>
      __$BookAuthorAttributesCopyWithImpl<_BookAuthorAttributes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookAuthorAttributesToJson(this);
  }
}

abstract class _BookAuthorAttributes implements BookAuthorAttributes {
  factory _BookAuthorAttributes(
      {@JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'birthplace')
          required String birthplace,
      @JsonKey(name: 'date_of_birth')
      @StringToDateConverter()
          required DateTime dateOfBirth,
      @JsonKey(name: 'date_of_death')
      @StringToDateConverter()
          DateTime? dateOfDeath}) = _$_BookAuthorAttributes;

  factory _BookAuthorAttributes.fromJson(Map<String, dynamic> json) =
      _$_BookAuthorAttributes.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'birthplace')
  String get birthplace;
  @override
  @JsonKey(name: 'date_of_birth')
  @StringToDateConverter()
  DateTime get dateOfBirth;
  @override
  @JsonKey(name: 'date_of_death')
  @StringToDateConverter()
  DateTime? get dateOfDeath;
  @override
  @JsonKey(ignore: true)
  _$BookAuthorAttributesCopyWith<_BookAuthorAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}
