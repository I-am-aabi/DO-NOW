import 'package:flutter/material.dart';
import 'package:project1/pages/TASKS/add_task.dart';

void tapAddTask(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AddTaskScreen()));
}
