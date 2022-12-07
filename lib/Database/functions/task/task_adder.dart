import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/Database/functions/task/add_task.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/get_id.dart';


taskAdder() async {
  String id = getId(elements[2], elements[3]);
  String dateid = id.substring(0, 8);
  // print(id);
  var _task = TaskModel('upcoming',
      discription: elements[0],
      location: elements[1],
      date: elements[2],
      category: elements[4],
      time: elements[3],
      id: id,
      dateid: dateid);
  // elements[7] = await dateInfo(id);
  // TaskDateCreater().dateAssigner(date);
  addTask(_task);
}
