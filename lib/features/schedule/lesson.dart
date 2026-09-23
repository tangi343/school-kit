class Lesson {
  final String title, time;
  final int dayOfWeek;

  const Lesson({
    required this.title,
    required this.time,
    required this.dayOfWeek,
  });

  Lesson copyWith({String? title, String? time, int? dayOfWeek}) {
    return Lesson(
      title: title ?? this.title,
      time: time ?? this.time,
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
    );
  }
}
