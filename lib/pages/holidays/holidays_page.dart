import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/pages/holidays/holidays_page_view_model.dart';

class HoidaysPage extends ConsumerWidget {
  const HoidaysPage({Key? key}) : super(key: key);

  List<DropdownMenuItem<int>> get _dropDownButtonItems {
    List<DropdownMenuItem<int>> ret = [];
    for (int i = 0; i <= 12; i++) {
      String text = i == 0 ? "全て" : "$i月";
      ret.add(DropdownMenuItem<int>(
        value: i,
        child: Text(text),
      ));
    }
    return ret;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var holidayPageStateAsyncValue =
        ref.watch(holidaysPageStateNotifierProvider);
    var holidayPageStateNotifier =
        ref.watch(holidaysPageStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text("祝日"),
      ),
      body: holidayPageStateAsyncValue.when(data: (holidayPageState) {
        return Column(
          children: [
            DropdownButton<int>(
              items: _dropDownButtonItems,
              value: holidayPageState.filterMonth,
              onChanged: (value) {
                var index = value;
                if (index != null) {
                  holidayPageStateNotifier.filterMonth = index;
                }
              },
            ),
            Flexible(
              child: ListView.builder(
                itemCount: holidayPageState.filteredHolidays.length,
                itemBuilder: (BuildContext context, int index) {
                  var holiday = holidayPageState.filteredHolidays[index];
                  return Row(
                    children: [
                      Text(holiday.date.toString()),
                      Text(holiday.title)
                    ],
                  );
                },
              ),
            ),
          ],
        );
      }, loading: () {
        return const Center(child: CircularProgressIndicator());
      }, error: (error, stack) {
        return Center(child: Text(error.toString()));
      }),
    );
  }
}
