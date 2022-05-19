import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/model/repositories/holidays_repository.dart';
import 'package:flutter_riverpod_study/pages/holidays/state/holidays_page_state.dart';

final holidaysPageStateNotifierProvider =
    StateNotifierProvider<HolidaysPageViewModel, AsyncValue<HolidaysPageState>>(
        (ref) => HolidaysPageViewModel(ref));

class HolidaysPageViewModel
    extends StateNotifier<AsyncValue<HolidaysPageState>> {
  final Ref ref;
  HolidaysPageViewModel(this.ref) : super(const AsyncValue.loading()) {
    var holidaysAsyncValue = ref.watch(holidaysFutureProvider);
    holidaysAsyncValue.whenOrNull(
      data: (data) {
        state = AsyncValue.data(HolidaysPageState(holidays: data));
      },
      error: (error, stack) {
        state = AsyncValue.error(error);
      },
    );
  }
  set filterMonth(int month) {
    var value = state.value;
    if (value != null) {
      state = AsyncValue.data(value.copyWith(filterMonth: month));
    }
  }
}
