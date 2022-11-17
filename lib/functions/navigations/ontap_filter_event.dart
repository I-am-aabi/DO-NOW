import 'package:flutter/material.dart';
import 'package:project1/pages/Filter/event_filter_page.dart';
import 'package:project1/pages/TASKS/add_task.dart';
import 'package:project1/pages/TASKS/edit_task.dart';

void tapEventFilter(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => EventFilterPage()));
}
