import 'package:flutter/material.dart';
import 'package:project1/pages/TASKS/add_task.dart';
import 'package:project1/pages/TASKS/view_task.dart';

void tapviewTask(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ViewTask()));
}
