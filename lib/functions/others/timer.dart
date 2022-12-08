import 'dart:async';

import 'package:project1/Database/functions/task/task_selector.dart';
import 'package:project1/functions/others/notification.dart';

setTimer(id, Timer timer) async {
  String timenow = DateTime.now().toString();
  String year = timenow.substring(0, 4);
  String month = timenow.substring(5, 7);
  String day = timenow.substring(8, 10);
  String hour = timenow.substring(11, 13);
  String minute = timenow.substring(14, 16);
  String idnow = year + month + day + hour + minute;
  if (id == idnow) {
    final task = await getTask(id);
    if (task != null) {
      notify(task.discription, task.location);
      timer.cancel();
    } else {
      timer.cancel();
    }
  }
}
