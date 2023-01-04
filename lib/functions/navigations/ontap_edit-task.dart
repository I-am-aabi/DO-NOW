
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/presentation/Task/edit%20task/edit_task.dart';

void tapEditTask(context, keyvalue) async {
  final taskDB = await Hive.openBox<TaskModel>('task_DB');
  final task = taskDB.get(keyvalue);
  Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => EditTask(
            task: task,
            keyvalue: keyvalue,
          )));
}
