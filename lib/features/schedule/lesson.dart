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

  Map<String, dynamic> toJson(){
    return {
      'title': title,
      'dayOfWeek': dayOfWeek,
      'startHour': startTime.hour,
      'startMinute': startTime.minute,
      'endHour': endTime.hour,
      'endMinute': endTime.minute,
    };
  }

  factory Lesson.fromJson(Map<String, dynamic> json){
    return Lesson(
      title: json['title'] as String,
      dayOfWeek: json['dayOfWeek'] as int,
      startTime: TimeOfDay(
        hour: json['startHour'],
        minute: json['startMinute']
      ),
      endTime: TimeOfDay(
        hour: json['endHour'],
        minute: json['endMinute']
      ),
    );
  }

}
