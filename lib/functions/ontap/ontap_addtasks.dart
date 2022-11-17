import 'package:flutter/material.dart';
import 'package:project1/pages/add_task.dart';

void tapAddTask(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AddTaskScreen()));
}
