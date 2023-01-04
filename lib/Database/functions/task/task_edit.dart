import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/Database/functions/task/get_all_task.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/presentation/widgets/navigationbar.dart';
import 'package:project1/presentation/Task/edit%20task/widgets/edit_task_ifield.dart';

onTaskEdit(context, keyvalue) async {
  const EditTaskField().onEditTask();
  final taskDB = await Hive.openBox<TaskModel>('task_DB');
  final task = taskDB.getAt(keyvalue);
  String id = task!.id;
  String dateid = task.dateid;
  final edited = TaskModel(elements[6],
      discription: elements[0],
      location: elements[1],
      date: elements[2],
      category: elements[4],
      time: elements[3],
      id: id,
      dateid: dateid,
      timedate: dateofelement
      );

  taskDB.put(keyvalue, edited);
  // taskListNotifier.value.add(edited);
  // taskListNotifier.notifyListeners();
  getAllTask();
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (ctx) => const naviBar()));
}
