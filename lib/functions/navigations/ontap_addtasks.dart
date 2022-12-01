import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/pages/TASKS/add_task.dart';

void tapAddTask(context) {
  Timer((Duration(milliseconds: 500)), () {
     Navigator.of(context)
      .push(MaterialPageRoute(builder: (ctx) => AddTaskScreen()));
  });
 
}
