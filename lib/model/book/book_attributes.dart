import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/converters/string_to_date_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_attributes.freezed.dart';
part 'book_attributes.g.dart';

@freezed
class BookAttributes extends BaseModel with _$BookAttributes {
  factory BookAttributes({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'date_published') @StringToDateConverter() DateTime? datePublished,
    @JsonKey(name: 'isbn') int? isbn,
  }) = _BookAttributes;

  factory BookAttributes.fromJson(Map<String, dynamic> json) => _$BookAttributesFromJson(json);
}
