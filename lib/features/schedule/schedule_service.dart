import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'lesson.dart';

class ScheduleService{
	final File file;

	ScheduleService(this.file);

	static Future<ScheduleService> init() async{
		final directory = await getApplicationDocumentsDirectory();
		final file = File('${directory.path}/shedule.json');
		return ScheduleService(file);
	}

	Future<List<Lesson>> getLessons() async{
		if(! await file.exists()){
			return [];
		}
	
		String jsonString = await file.readAsString();

		List<dynamic> lessonMapList = jsonDecode(jsonString);

		return lessonMapList.map((json) => Lesson.fromJson(json)).toList();
	}

	Future<void> saveLessons(List<Lesson> lessons) async{
		List<Map<String, dynamic>> lessonMapList = 
			lessons.map((lesson) => lesson.toJson()).toList();

		String jsonString = jsonEncode(lessonMapList);
		await file.writeAsString(jsonString);
	}
}