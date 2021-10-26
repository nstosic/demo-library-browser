import 'package:demo_books/model/book/book.dart';
import 'package:demo_books/util/date_formatter.dart';
import 'package:flutter/material.dart';

class BookCell extends StatelessWidget {
  const BookCell({
    required this.book,
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final Book book;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: const EdgeInsets.all(4.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 8.0),
                Text(
                  book.attributes.title,
                  style: const TextStyle(fontSize: 24.0),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Published on: ${DateFormatter.formatDate(book.attributes.datePublished)}',
                  style: const TextStyle(fontSize: 14.0),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'ISBN: ${book.attributes.isbn}',
                  style: const TextStyle(fontSize: 14.0),
                ),
              ],
            )),
      ),
    );
  }
}
