import 'package:demo_books/model/book/book.dart';

abstract class NavigationParameters {
  const NavigationParameters();
  Map<String, dynamic> toArguments();
}

abstract class HomeKeys {}

class HomeParameters extends NavigationParameters {
  @override
  Map<String, dynamic> toArguments() => <String, dynamic>{};
}

abstract class BookDetailsKeys {
  static const book = 'book';
}

class BookDetailsParameters extends NavigationParameters {
  const BookDetailsParameters(this.book);

  final Book book;

  @override
  Map<String, dynamic> toArguments() => <String, dynamic>{
        BookDetailsKeys.book: book.toJson(),
      };
}
