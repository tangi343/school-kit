import 'package:flutter/material.dart';

class Lesson {
  final String title;
  final int dayOfWeek;
  final TimeOfDay startTime;
  final TimeOfDay endTime;

  const Lesson({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.dayOfWeek,
  });

  Lesson copyWith({
    String? title, 
    TimeOfDay? startTime, 
    TimeOfDay? endTime, 
    int? dayOfWeek
  }) {
    return Lesson(
      title: title ?? this.title,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
    );
  }
}
