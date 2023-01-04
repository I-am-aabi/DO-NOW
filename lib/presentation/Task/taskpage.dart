import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/get_all_task.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/Task/widgets/alltasks.dart';
import 'package:project1/presentation/Task/widgets/tasktopbar.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllTask();
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            children: const [
              TaskTopBar(),
              SizedBox(
                height: 15,
              ),
              Expanded(child: AllTasks()),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
