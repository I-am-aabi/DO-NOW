import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/pages/TASKS/taskpage.dart';
import 'package:project1/widgets/other/navigationbar.dart';
import 'Database/Models/task_model/task_data_model.dart';

Future<void> main() async{
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TaskModelAdapter().typeId)) {
    Hive.registerAdapter(TaskModelAdapter());
  }

  if (!Hive.isAdapterRegistered(eventModelAdapter().typeId)) {
  Hive.registerAdapter(eventModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const naviBar(),
    );
  }
}
