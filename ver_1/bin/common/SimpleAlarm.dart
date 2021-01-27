class SimpleAlaram {
  bool _enabled;
  DateTime _time;

  SimpleAlaram(bool enabled, DateTime time) {
    _enabled = enabled;
    _time = time;
  }

  bool get enabled {
    return _enabled;
  }

  set enabled(bool newValue) {
    _enabled = newValue;
  }

  DateTime get time {
    return _time;
  }

  set time(DateTime time) {
    _time = time;
  }
}
