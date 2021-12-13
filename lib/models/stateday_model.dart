import 'package:date_format/date_format.dart';
import 'package:uno/uno.dart';

class StateDayModel {
  late String day, hora, stateNowDay;

  StateDayModel() {
    stateNowDay = checkStateNowDay();
    day = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);
    hora = formatDate(DateTime.now(), [HH, ':', nn, ':', ss]);
  }
  checkStateNowDay() {
    if (DateTime.now().hour > 18) {
      return 'noite';
    } else {
      return 'dia';
    }
  }

  get getDayNow {
    return day + ' ' + hora;
  }

  set setDay(String day) {
    this.day = day;
  }

  set setStateNowDay(String state) {
    this.stateNowDay = state;
  }

  get getStateNowDay {
    return stateNowDay;
  }
}
