import 'package:freezed_annotation/freezed_annotation.dart';

class StringToDateConverter implements JsonConverter<DateTime, String> {
  const StringToDateConverter();

  @override
  DateTime fromJson(String json) {
    final year = json.substring(0, json.indexOf("-"));
    final month = json.substring(year.length + 1, json.lastIndexOf("-"));
    final day = json.substring(json.lastIndexOf("-") + 1);
    return DateTime(int.parse(year), int.parse(month), int.parse(day));
  }

  @override
  String toJson(DateTime object) {
    final year = object.year;
    final month = object.month;
    final day = object.day;
    return "$year-${month < 10 ? '0' : ''}$month-${day < 10 ? '0' : ''}$day";
  }
}
