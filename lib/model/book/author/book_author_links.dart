import 'package:demo_books/model/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_author_links.freezed.dart';
part 'book_author_links.g.dart';

@freezed
class BookAuthorLinks extends BaseModel with _$BookAuthorLinks {
  factory BookAuthorLinks({
    @JsonKey(name: 'self') required String selfUrl,
  }) = _BookAuthorLinks;

  factory BookAuthorLinks.fromJson(Map<String, dynamic> json) => _$BookAuthorLinksFromJson(json);
}
