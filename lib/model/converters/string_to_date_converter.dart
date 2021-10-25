import 'package:demo_books/util/date_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class StringToDateConverter implements JsonConverter<DateTime, String> {
  const StringToDateConverter();

  @override
  DateTime fromJson(String json) => DateFormatter.parseDate(json);

  @override
  String toJson(DateTime object) => DateFormatter.formatDate(object);
}
