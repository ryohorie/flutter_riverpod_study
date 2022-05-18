import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/pages/counter/state/counter_page_state.dart';

final counterPageStateNotifierProvider =
    StateNotifierProvider<CounterPageViewModel, CounterPageState>(
        (ref) => CounterPageViewModel(ref));

class CounterPageViewModel extends StateNotifier<CounterPageState> {
  final Ref ref;
  CounterPageViewModel(this.ref) : super(const CounterPageState(count: 0));

  add(int value) {
    state = state.copyWith(count: state.count + value);
  }

  reset() {
    state = const CounterPageState(count: 0);
  }
}
