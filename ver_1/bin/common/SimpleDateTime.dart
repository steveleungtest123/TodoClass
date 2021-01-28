import 'package:intl/intl.dart';

class SimpleDateTime {
  DateTime _time;
  SimpleDateTime(DateTime time) {
    _time = time;
  }

  set time(DateTime time) {
    _time = time;
  }

  DateTime get time {
    return _time;
  }

  void add(Duration dur) {
    _time.add(dur);
  }

  void subtract(Duration dur) {
    _time.subtract(dur);
  }

  static String timeString(DateTime time, {String formatString}) {
    final formatter = DateFormat(formatString ?? 'yyyy-MM-dd HH:mm:ss');
    return formatter.format(time);
  }
}
