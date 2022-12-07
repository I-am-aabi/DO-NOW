import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';

import '../../Database/Models/task_model/task_data_model.dart';

final List<TaskModel> taskBoxList =
    Hive.box<TaskModel>('task_DB').values.toList();
List<TaskModel> displayTask = List<TaskModel>.from(taskBoxList);
final List<eventModel> eventBoxList =
    Hive.box<eventModel>('event_DB').values.toList();
List<eventModel> displayEvent = List<eventModel>.from(eventBoxList);
bool filtercheck = false;
String personalvalue = '';
String shoppingvalue = '';
String workvalue = '';
List<TaskModel> fillteresults = [];
List<TaskModel> filtertask = List<TaskModel>.from(taskBoxList);
List<TaskModel> searchtask = List<TaskModel>.from(taskBoxList);
List<String> categoryvalues = ['', '', '', '', '', '', '', '', ''];
filterclear() {
  categoryvalues = ['', '', '', '', '', '', '', '', ''];
}

bool state = false;
