import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_selector.dart';
import 'package:project1/pages/EVENT/view_event.dart';

void tapViewEvent(context, index) async{
  // ignore: non_constant_identifier_names
  final Event =await getEvent(index);
 
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ViewEvent(Event: Event, index: index,)));
}
