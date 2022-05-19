import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_study/model/entities/holidays/holidays.dart';

final holidaysFutureProvider = FutureProvider<Holidays>((ref) async {
  var response =
      await Dio().get('https://holidays-jp.github.io/api/v1/2022/date.json');
  var data = response.data;
  if (data != null) {
    return Holidays.fromJson(data);
  }
  return const Holidays();
});
