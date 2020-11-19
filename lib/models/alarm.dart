import 'package:flutter/material.dart';

class Alarm {
  final TimeOfDay time;
  final bool enabled;

  const Alarm({
    @required this.time,
    this.enabled = false,
  });

  int comparedTo(Alarm other) {
    return _totalMinutes == other._totalMinutes
        ? 0
        : (_totalMinutes - other._totalMinutes).abs() ~/
            (_totalMinutes - other._totalMinutes);
  }

  int get _totalMinutes => time.hour * 60 + time.minute;

  Alarm copyWith({
    TimeOfDay time,
    bool enabled,
  }) {
    return Alarm(
      time: time ?? this.time,
      enabled: enabled ?? this.enabled,
    );
  }

  @override
  String toString() => 'Alarm(time: $time, enabled: $enabled)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Alarm && o.time == time && o.enabled == enabled;
  }

  @override
  int get hashCode => time.hashCode ^ enabled.hashCode;
}
