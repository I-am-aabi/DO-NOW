import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';

Future <dynamic> getIndex(id) async {
  final taskDB = await Hive.openBox<TaskModel>('task_DB');
  final Map<dynamic, TaskModel> deliveriesMap = taskDB.toMap();
  dynamic desiredKey;
  deliveriesMap.forEach((key, value) {
    if (value.id == id) desiredKey = key;
  });
  return desiredKey;
}
