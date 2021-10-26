import 'package:demo_books/model/base_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_store_links.freezed.dart';
part 'book_store_links.g.dart';

@freezed
class BookStoreLinks extends BaseModel with _$BookStoreLinks {
  factory BookStoreLinks({
    @JsonKey(name: 'self') required String selfUrl,
  }) = _BookStoreLinks;

  factory BookStoreLinks.fromJson(Map<String, dynamic> json) => _$BookStoreLinksFromJson(json);
}
