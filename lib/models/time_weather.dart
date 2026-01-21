import 'package:flutter/material.dart';

class TimeWeather {
  final TimeOfDay start;
  final TimeOfDay end;
  final String temp;
  final String label;
  final String image;

  TimeWeather({
    required this.start,
    required this.end,
    required this.temp,
    required this.label,
    required this.image,
  });
}

// Time-wise data
final List<TimeWeather> weatherList = [
  TimeWeather(
    // 11-12
    start: const TimeOfDay(hour: 11, minute: 0),
    end: const TimeOfDay(hour: 12, minute: 0),
    temp: '17°',
    label: 'Morning',
    image: 'assets/first_page/second_portion/morning.png',
  ),
  TimeWeather(
    // 12-1
    start: const TimeOfDay(hour: 12, minute: 0),
    end: const TimeOfDay(hour: 13, minute: 0),
    temp: '30°',
    label: 'Afternoon',
    image: 'assets/first_page/second_portion/afternoon.png',
  ),
  TimeWeather(
    //
    start: const TimeOfDay(hour: 14, minute: 30),
    end: const TimeOfDay(hour: 15, minute: 30),
    temp: '19°',
    label: 'Night',
    image: 'assets/first_page/second_portion/night.png',
  ),
];


TimeWeather getCurrentWeather() {
  final now = TimeOfDay.now();

  for (var item in weatherList) {
    if (_isInRange(now, item.start, item.end)) {
      return item;
    }
  }

  return weatherList.first;
}

bool _isInRange(TimeOfDay now, TimeOfDay start, TimeOfDay end) {
  final nowMin = now.hour * 60 + now.minute;
  final startMin = start.hour * 60 + start.minute;
  final endMin = end.hour * 60 + end.minute;

  return nowMin >= startMin && nowMin <= endMin;
}
