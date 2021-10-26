import 'package:demo_books/model/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_store_attributes.freezed.dart';
part 'book_store_attributes.g.dart';

@freezed
class BookStoreAttributes extends BaseModel with _$BookStoreAttributes {
  factory BookStoreAttributes({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'address') required String address,
  }) = _BookStoreAttributes;

  factory BookStoreAttributes.fromJson(Map<String, dynamic> json) =>
      _$BookStoreAttributesFromJson(json);
}
