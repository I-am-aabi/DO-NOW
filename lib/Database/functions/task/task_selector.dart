import 'package:hive/hive.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/functions/others/get_index.dart';

Future<TaskModel?> getTask( id) async {
  final taskDB = await Hive.openBox<TaskModel>('task_db');
  dynamic index =await getIndex(id);
  final task = taskDB.get(index);
  return task;
}
