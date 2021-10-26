import 'package:flutter/material.dart';

class BookAttributeCell extends StatelessWidget {
  const BookAttributeCell({required this.attribute, required this.value, Key? key})
      : super(key: key);

  final String attribute;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 160.0,
            child: Text(
              attribute,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
