import 'package:project1/Database/functions/task/add_task.dart';
import 'package:project1/Database/functions/task/task_adder.dart';

List datelist = [];

String dateInfo(String date) {
  datelist;
  for (int i = 0; i <= datelist.length - 1; i++) {
    if (date == datelist[i]) {
      return '';
    }
  }
  datelist.add(date);
  String newdate = date.substring(6, 8);
  return newdate;
}
