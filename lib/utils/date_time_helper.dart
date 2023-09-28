class DateTimeHelper {
  deTimestamp() {
    DateTime now = DateTime.now();
    int year = now.year;
    int month = now.month;
    int day = now.day;
    String dtString = '$day.$month.$year';
    return dtString;
  }

  localDateTimeNow() {
    DateTime now = DateTime.now();
    DateTime localNow = now.toLocal();
    return '$localNow';
  }
}
