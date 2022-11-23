import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';

ValueNotifier<List<eventModel>> eventListNotifier = ValueNotifier([]);
Future<void> addEvent(eventModel value) async {
  final eventDB = await Hive.openBox<eventModel>('task_db');
  eventDB.add(value);
  eventListNotifier.value.add(value);
  eventListNotifier.notifyListeners();
}
