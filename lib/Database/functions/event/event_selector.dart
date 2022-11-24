import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';

Future<eventModel?> getEvent(index) async {
  final eventDB = await Hive.openBox<eventModel>('event_DB');
  final Event = eventDB.getAt(index);
  return Event;
}
