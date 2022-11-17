import 'package:flutter/material.dart';
import 'package:project1/pages/EVENT/edit_event.dart';
import 'package:project1/pages/TASKS/add_task.dart';

void tapEditEvent(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => EditEvent()));
}
