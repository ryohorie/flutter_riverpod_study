import 'package:flutter_riverpod_study/model/entities/holidays/holidays.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'holidays_page_state.freezed.dart';

@freezed
class HolidaysPageState with _$HolidaysPageState {
  const HolidaysPageState._();
  const factory HolidaysPageState({
    required Holidays holidays,
    @Default(0) filterMonth,
  }) = _HolidaysPageState;

  List<Holiday> get filteredHolidays {
    if (filterMonth == 0) {
      return holidays.holidays;
    }
    return holidays.holidays
        .where((holiday) => holiday.date.month == filterMonth)
        .toList();
  }
}
