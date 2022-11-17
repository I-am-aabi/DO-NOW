import 'package:flutter/material.dart';
import 'package:project1/pages/add_task.dart';
import 'package:project1/pages/view_task.dart';

void tapviewTask(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ViewTask()));
}
