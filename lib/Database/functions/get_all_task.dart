import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/task_data_model.dart';
import 'package:project1/Database/functions/add_task.dart';

Future<void> getAllTask() async {
  final taskDB = await Hive.openBox<TaskModel>('task_db');
  taskListNotifier.value.clear();
  taskListNotifier.value.addAll(taskDB.values);
  taskListNotifier.notifyListeners();
}
