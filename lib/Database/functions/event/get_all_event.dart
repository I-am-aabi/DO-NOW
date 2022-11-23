import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/Database/functions/event/add_event.dart';

Future<void> getAllEvent() async {
  final eventDB = await Hive.openBox<eventModel>('event_DB');
  eventListNotifier.value.clear();
  eventListNotifier.value.addAll(eventDB.values);
  eventListNotifier.notifyListeners();
}
