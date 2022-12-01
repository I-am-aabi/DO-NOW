import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/functions/others/get_date_info.dart';

ValueNotifier<List<TaskModel>> taskListNotifier = ValueNotifier([]);
ValueNotifier<List<String>> dateListNotifier = ValueNotifier([]);
Future<void> addTask(TaskModel value) async {
  final taskDB = await Hive.openBox<TaskModel>('task_db');
  taskDB.add(value);
  taskListNotifier.value.add(value);
  // dateListNotifier.value.add(datelist);
  // dateListNotifier.notifyListeners();
  taskListNotifier.notifyListeners();
}
