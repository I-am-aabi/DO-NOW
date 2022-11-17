import 'package:flutter/material.dart';
import 'package:project1/pages/Search/search_screen.dart';
import 'package:project1/pages/TASKS/add_task.dart';
import 'package:project1/pages/TASKS/edit_task.dart';

void tapSearch(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
}
