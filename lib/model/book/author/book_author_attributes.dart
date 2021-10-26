import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/converters/string_to_date_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_author_attributes.freezed.dart';
part 'book_author_attributes.g.dart';

@freezed
class BookAuthorAttributes extends BaseModel with _$BookAuthorAttributes {
  factory BookAuthorAttributes({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'birthplace') required String birthplace,
    @JsonKey(name: 'date_of_birth') @StringToDateConverter() required DateTime dateOfBirth,
    @JsonKey(name: 'date_of_death') @StringToDateConverter() DateTime? dateOfDeath,
  }) = _BookAuthorAttributes;

  factory BookAuthorAttributes.fromJson(Map<String, dynamic> json) =>
      _$BookAuthorAttributesFromJson(json);
}
