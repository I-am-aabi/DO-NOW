import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/alltasks.dart';
import 'package:project1/widgets/task/tasktopbar.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,top: 20),
          child: Column(
            children: const [
              TaskTopBar(),
              SizedBox(
                height: 30,
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