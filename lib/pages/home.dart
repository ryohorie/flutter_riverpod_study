import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/pages/counter/counter_page.dart';

class HomePage extends ConsumerWidget {
  HomePage({Key? key}) : super(key: key);
  final _pages = [const CounterPage(), Container()];
  final _homePageTypeProvider = StateProvider<int>((ref) => 0);
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.view_list),
      label: 'カウンター',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.view_list),
      label: 'WebAPI',
    ),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int homePageType = ref.watch(_homePageTypeProvider);
    return Scaffold(
      body: _pages[homePageType],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        currentIndex: homePageType,
        onTap: (int index) {
          ref.read(_homePageTypeProvider.notifier).state = index;
        },
      ),
    );
  }
}
