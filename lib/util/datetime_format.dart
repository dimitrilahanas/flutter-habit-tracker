DateTime normalizeDate(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}

String hiveKeyForDate(DateTime date) {
  final d = normalizeDate(date);
  final year = d.year.toString();
  final month = d.month.toString().padLeft(2, '0');
  final day = d.day.toString().padLeft(2, '0');
  return "$year$month$day";
}