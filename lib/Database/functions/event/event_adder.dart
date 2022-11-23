import 'package:flutter/cupertino.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/Database/functions/event/add_event.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/widgets/event/add_event/event_field/event_field.dart';

eventAdder(context) async {
  EventField().onAddevent;
  String id = DateTime.now().toString();
  final task = eventModel('upcoming',
      path: elements[5],
      discription: elements[0],
      location: elements[1],
      date: elements[2],
      category: elements[4],
      time: elements[3],
      id: id);
  addEvent(task);
  Navigator.pop(context);
}
