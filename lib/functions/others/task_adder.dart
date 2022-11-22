import 'package:project1/Database/Models/task_data_model.dart';
import 'package:project1/Database/functions/add_task.dart';
import 'package:project1/Database/functions/task_data_collector.dart';

taskAdder() {
  String id = DateTime.now().toString();
  // print(int.parse(elements[4]));
  var _task = TaskModel(1,
      discription: elements[0],
      location: elements[1],
      date: elements[2],
      category: elements[4],
      time: elements[3],
      id: id);
  addTask(_task);
}
