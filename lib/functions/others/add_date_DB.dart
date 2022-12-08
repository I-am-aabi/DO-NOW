import 'dart:async';

import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/functions/others/timer.dart';

List<String> datelist = [];
addDate(List<TaskModel> taskdb) {
  taskdb.sort(
    (a, b) => a.id.compareTo(b.id),
  );
  Timer.periodic(const Duration(seconds: 30), (timer) {
    setTimer(taskdb[0].id, timer);
  });
}
