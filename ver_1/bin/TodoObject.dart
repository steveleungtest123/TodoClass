import 'package:meta/meta.dart';
import 'package:meta/meta_meta.dart';
import 'package:uuid/uuid.dart';

import 'common/SimpleAlarm.dart';
import 'common/SimpleDateTime.dart';

enum ImportanceLevel { High, Medium, Low }

extension ImportanceLevelExt on ImportanceLevel {
  int get color {
    switch (this) {
      case ImportanceLevel.High:
        return 0xFFF50057;
      case ImportanceLevel.Medium:
        return 0xFFFF9800;
      case ImportanceLevel.Low:
      default:
        return 0xFF00E676;
    }
  }

  int get levelIntNum {
    switch (this) {
      case ImportanceLevel.High:
        return 2;
      case ImportanceLevel.Medium:
        return 1;
      case ImportanceLevel.Low:
      default:
        return 0;
    }
  }
}

class TodoObject {
  String _id;
  String title;
  String notes;
  SimpleDateTime _created;
  SimpleDateTime _updated;
  SimpleDateTime _targetDate;
  bool _finished;
  SimpleAlaram _alaram;
  SimpleAlaram deadline;
  Map<String, String> reapeated;
  ImportanceLevel important;

  TodoObject(
      {@required String t,
      String n,
      SimpleAlaram a,
      SimpleAlaram d,
      ImportanceLevel imp,
      SimpleDateTime targetDate}) {
    _id = Uuid().v1();
    title = t;
    notes = n ?? '';
    _created = SimpleDateTime(DateTime.now());
    _updated = SimpleDateTime(DateTime.now());
    _finished = false;
    _alaram = a ?? SimpleAlaram(false, null);
    deadline = d ?? SimpleAlaram(false, null);
    important = imp ?? ImportanceLevel.Low;

    final now = DateTime.now();
    _targetDate =
        targetDate ?? SimpleDateTime(DateTime(now.year, now.month, now.day, 24, 59, 59));
  }

  void setAlaram({bool enabled, DateTime time}) {
    _alaram.enabled = enabled;
    if (time != null) _alaram.time = time;
    //todo
  }

  void setFinished() {
    _finished = !_finished;
    //todo
  }

  String get id {
    return _id;
  }

  SimpleDateTime get created {
    return _created;
  }

  SimpleDateTime get updated {
    return _updated;
  }

  SimpleDateTime get targetDate {
    return _targetDate;
  }

  set targetDate(SimpleDateTime time) {
    _targetDate = time;
  }

  bool get finished {
    return _finished;
  }

  set updated(SimpleDateTime time) {
    _updated = time;
  }
}
