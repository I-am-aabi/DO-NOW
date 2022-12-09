import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';

List elements = [
  'DESCRIPTION',
  'LOCATION',
  'DATE',
  'TIME',
  'CATEGORY',
  'PATH',
  'STATUS',
  'date',
  '--',
  '--',
];
List<TaskModel> taskListes = [];
DateTime dateofelement = DateTime.now();
 DateTimeRange dateRangeset =
    DateTimeRange(start: DateTime.now(), end: DateTime(2022, 12, 25));
    List datelist = [];
