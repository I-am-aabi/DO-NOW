import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/presentation/Task/add%20task/add_task.dart';

void tapAddTask(context) {
  Timer((const Duration(milliseconds: 500)), () {
     Navigator.of(context)
      .push(MaterialPageRoute(builder: (ctx) => const AddTaskScreen()));
  });
 
}
