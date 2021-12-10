import 'package:date_format/date_format.dart';
import 'package:uno/uno.dart';

class Day_Model {
  String day;
  String stateDay;

  Day_Model({this.day = '00-00-00 00:00', required this.stateDay});

  insertDayNow() {
    day = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);
  }

  get getDayNow => day;

  set setDay(String day) {
    this.day = day;
  }
}
