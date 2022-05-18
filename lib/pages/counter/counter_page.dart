import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/pages/counter/counter_page_view_model.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var counterPageViewModelNotifier =
        ref.watch(counterPageStateNotifierProvider.notifier);
    var counterPageState = ref.watch(counterPageStateNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("カウンター")),
      body: Column(
        children: [
          Text(
            counterPageState.count.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () => counterPageViewModelNotifier.reset(),
                  icon: const Icon(Icons.refresh)),
              IconButton(
                  onPressed: () => counterPageViewModelNotifier.add(-1),
                  icon: const Icon(Icons.remove)),
              IconButton(
                  onPressed: () => counterPageViewModelNotifier.add(1),
                  icon: const Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
