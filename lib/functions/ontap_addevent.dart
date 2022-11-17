import 'package:flutter/material.dart';
import 'package:project1/pages/addevent.dart';

void tapAddEvent(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AddEvent()));
}
