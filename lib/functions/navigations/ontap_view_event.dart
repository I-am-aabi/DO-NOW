import 'package:flutter/material.dart';
import 'package:project1/pages/TASKS/add_task.dart';
import 'package:project1/pages/TASKS/edit_task.dart';
import 'package:project1/pages/EVENT/view_event.dart';

void tapViewEvent(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ViewEvent()));
}
