import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:project1/Database/functions/get_all_task.dart';

import '../../Database/Models/task_data_model.dart';

deleteTask(int index, context) async {
  final taskDB = await Hive.openBox<TaskModel>('task_db');
  taskDB.deleteAt(index);
  getAllTask();
  Navigator.pop(context);
}
