import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/functions/others/add_date_DB.dart';

ValueNotifier<List<TaskModel>> taskListNotifier = ValueNotifier([]);
ValueNotifier<List<String>> dateListNotifier = ValueNotifier([]);
Future<void> addTask(TaskModel value) async {
  final taskDB = await Hive.openBox<TaskModel>('task_db');
  taskDB.add(value);
  taskListNotifier.value.add(value);
  taskListNotifier.notifyListeners();
  final List<TaskModel> dbvalues = taskDB.values.toList();
  addDate(dbvalues);
}
