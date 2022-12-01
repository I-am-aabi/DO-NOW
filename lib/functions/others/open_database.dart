import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';

openDB() async {
  final taskDB = await Hive.openBox<TaskModel>('task_DB');
  var items = taskDB.values.toList();
  items.sort(((a, b) => a.id.compareTo(b.id)));
}
