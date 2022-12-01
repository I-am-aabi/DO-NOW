import 'package:flutter/cupertino.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/Database/functions/event/add_event.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';

eventAdder(context) async {
  // EventField().onAddevent();
  String id = DateTime.now().toString();
  final task = eventModel('upcoming',
      path: elements[5],
      discription: eventelements[0],
      location: eventelements[1],
      date: eventelements[2],
      category: eventelements[4],
      time: eventelements[3],
      id: id);
  addEvent(task);
  Navigator.pop(context);
}
