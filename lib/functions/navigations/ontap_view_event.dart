import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_selector.dart';
import 'package:project1/pages/TASKS/add_task.dart';
import 'package:project1/pages/TASKS/edit_task.dart';
import 'package:project1/pages/EVENT/view_event.dart';
import 'package:project1/widgets/event/event.dart';

void tapViewEvent(context, index) async{
  final Event =await getEvent(index);
 
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ViewEvent(Event: Event, index: index,)));
}
