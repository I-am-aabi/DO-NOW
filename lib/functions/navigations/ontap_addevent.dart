import 'package:flutter/material.dart';
import 'package:project1/presentation/event/add%20event/addevent.dart';

void tapAddEvent(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AddEvent()));
}
