import 'package:intl/intl.dart';

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

  utcTimestamp() {
    DateTime now = DateTime.now();
    DateTime utcNow = now.toUtc();
    return '$utcNow';
  }

  toDeDateTimeStr(DateTime? dt) {
    if (dt != null) {
      // DateFormat deDateTimeFormat = DateFormat('dd.MM.yyyy HH:mm:ss');
      DateFormat deDateFormat = DateFormat('dd.MM.yyyy');
      DateFormat deTimeFormat = DateFormat('HH:mm:ss');
      String dateToStr = deDateFormat.format(dt);
      String timeToStr = deTimeFormat.format(dt);
      // Map dtMap = {date: ''};
      return {'date': dateToStr, 'time': timeToStr};
    } else {
      return {'date': '', 'time': ''};
    }
  }
}
