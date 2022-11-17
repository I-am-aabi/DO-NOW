import 'package:flutter/material.dart';
import 'package:project1/pages/add_task.dart';
import 'package:project1/pages/edit_task.dart';

void tapEditTask(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => EditTask()));
}
