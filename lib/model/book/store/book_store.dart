import 'package:demo_books/model/base_model.dart';
import 'package:demo_books/model/book/store/book_store_attributes.dart';
import 'package:demo_books/model/book/store/book_store_links.dart';
import 'package:demo_books/model/book/store/book_store_relationships.dart';
import 'package:demo_books/model/converters/book_store_attributes_converter.dart';
import 'package:demo_books/model/converters/book_store_links_converter.dart';
import 'package:demo_books/model/converters/book_store_relationships_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_store.freezed.dart';
part 'book_store.g.dart';

@freezed
class BookStore extends BaseModel with _$BookStore {
  factory BookStore({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'attributes')
    @BookStoreAttributesConverter()
        required BookStoreAttributes attributes,
    @JsonKey(name: 'relationships')
    @BookStoreRelationshipsConverter()
        required BookStoreRelationships relationships,
    @JsonKey(name: 'links') @BookStoreLinksConverter() required BookStoreLinks links,
  }) = _BookStore;

  factory BookStore.fromJson(Map<String, dynamic> json) => _$BookStoreFromJson(json);
}
