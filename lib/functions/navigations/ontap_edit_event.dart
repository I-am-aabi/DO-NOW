import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/pages/EVENT/edit_event.dart';
import 'package:project1/pages/TASKS/add_task.dart';

void tapEditEvent(context, index) async {
  final eventDB = await Hive.openBox<eventModel>('event_DB');
  final event = eventDB.getAt(index);
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => EditEvent(index: index,event: event,)));
}
