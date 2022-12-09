import 'dart:async';

import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/Database/functions/task/add_task.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/get_id.dart';
import 'package:project1/functions/others/timer.dart';

taskAdder() async {
  String id = getId(elements[8], elements[9]);
  String dateid = id.substring(0, 8);
  var _task = TaskModel('upcoming',
      discription: elements[0],
      location: elements[1],
      date: elements[2],
      category: elements[4],
      time: elements[3],
      id: id,
      dateid: dateid,
      timedate: dateofelement);
      addTask(_task);
Timer tasktimer =  Timer.periodic(const Duration(seconds: 30), (timer) {
    setTimer(id,timer);
  });
 
}
