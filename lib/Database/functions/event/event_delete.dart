import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/Database/functions/event/get_all_event.dart';

void eventDelete(context, index) async {
  final eventDB = await Hive.openBox<eventModel>('event_DB');
  eventDB.deleteAt(index);
  getAllEvent();
  Navigator.pop(context);
}
