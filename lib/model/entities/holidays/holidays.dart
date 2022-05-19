import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'holidays.freezed.dart';

class Holiday {
  Holiday({required this.date, required this.title});
  DateTime date;
  String title;
}

@freezed
class Holidays with _$Holidays {
  const Holidays._();
  const factory Holidays({
    @Default([]) List<Holiday> holidays,
  }) = _Holidays;

  factory Holidays.fromJson(Map<String, dynamic> json) {
    List<Holiday> holidays = [];
    for (var key in json.keys) {
      DateTime dt = DateTime.parse(key);
      holidays.add(Holiday(date: dt, title: json[key]));
    }
    return Holidays(holidays: holidays);
  }
}
