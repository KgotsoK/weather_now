import 'package:intl/intl.dart';

class DateFormatter {
  static String toDayOfWeek(DateTime datetime) {
    DateFormat formatter = DateFormat("EEEE");
    return formatter.format(datetime);
  }

  static String toReadableDate(DateTime datetime) {
    DateFormat formatter = DateFormat("EEEE, d MMMM y");
    return formatter.format(datetime);
  }
}
