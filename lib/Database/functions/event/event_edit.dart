import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/Database/functions/event/get_all_event.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/widgets/event/edit_event/edit_event_fields/edit_event_field.dart';
import 'package:project1/widgets/other/navigationbar.dart';

onEditEvent(context, index) async {
  const EditEventField().onEditevent();
  final eventDB = await Hive.openBox<eventModel>('event_DB');
  String id = DateTime.now().toString();
  final event = eventModel(elements[6],
      path: elements[5],
      discription: elements[0],
      location: elements[1],
      date: elements[2],
      category: elements[4],
      time: elements[3],
      id: id);
  eventDB.putAt(index, event);
  getAllEvent();
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: ((ctx1) => naviBar())));
}
