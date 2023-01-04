import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_selector.dart';
import 'package:project1/functions/others/get_index.dart';
import 'package:project1/presentation/Task/view%20task/view_task.dart';

void tapviewTask(context, id) async {
  final task = await getTask(id);
  dynamic Keyvalue =await getIndex(id);
  Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => ViewTask(
            task: task,
            keyvalue: Keyvalue,
          )));
}
