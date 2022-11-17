import 'package:flutter/material.dart';
import 'package:project1/pages/add_task.dart';
import 'package:project1/pages/edit_task.dart';
import 'package:project1/pages/view_event.dart';

void tapViewEvent(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ViewEvent()));
}
