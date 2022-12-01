import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:project1/Database/functions/task/get_all_task.dart';

import '../../Models/task_model/task_data_model.dart';

deleteTask(context, keyvalue) async {
  final taskDB = await Hive.openBox<TaskModel>('task_db');
  taskDB.delete(keyvalue);
  getAllTask();
  Navigator.pop(context);
}
