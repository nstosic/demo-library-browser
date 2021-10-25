import 'package:demo_books/model/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_links.freezed.dart';
part 'book_links.g.dart';

@freezed
class BookLinks extends BaseModel with _$BookLinks {
  factory BookLinks({
    @JsonKey(name: 'self') required String selfUrl,
  }) = _BookLinks;

  factory BookLinks.fromJson(Map<String, dynamic> json) => _$BookLinksFromJson(json);
}
