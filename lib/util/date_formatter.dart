abstract class DateFormatter {
  static String formatDate(DateTime date) {
    return '${date.year}-${date.month < 10 ? '0' : ''}${date.month}-${date.day < 10 ? '0' : ''}${date.day}';
  }

  static DateTime parseDate(String date) {
    final components = date.split('-');
    assert(components.length == 3, 'Expected YYYY-MM-DD format');
    final year = int.parse(components[0]);
    final month = int.parse(components[1]);
    final day = int.parse(components[2]);
    return DateTime(year, month, day);
  }
}
