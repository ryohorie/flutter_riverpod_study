import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'counter_page_state.freezed.dart';

@freezed
class CounterPageState with _$CounterPageState {
  const CounterPageState._();
  const factory CounterPageState({
    @Default(0) int count,
  }) = _CounterPageState;
}
