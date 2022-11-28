import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_selector.dart';
import 'package:project1/pages/TASKS/edit_task.dart';
import 'package:project1/pages/TASKS/view_task.dart';

void tapEditTask(context, index) async {
final task = await getTask(index);
  Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => EditTask(
            task:task,index: index,
          )));
}
