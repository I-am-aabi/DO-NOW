import 'package:hive/hive.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';

Future<TaskModel?> getTask(int index) async {
  final taskDB = await Hive.openBox<TaskModel>('task_db');
  final task = taskDB.getAt(index);
  return task;
}
