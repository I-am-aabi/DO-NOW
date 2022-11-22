import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task_selector.dart';
import 'package:project1/pages/TASKS/view_task.dart';

void tapviewTask(context, index) async {
final task = await getTask(index);
  Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => ViewTask(
            task: task,index: index,
          )));
}
