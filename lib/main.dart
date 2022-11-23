import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/pages/Home/splashscreen.dart';

import 'Database/Models/task_model/task_data_model.dart';

Future<void> main() async{
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TaskModelAdapter().typeId)) {
    Hive.registerAdapter(TaskModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Splash_Screen(),
    );
  }
}
