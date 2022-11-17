import 'package:flutter/material.dart';
import 'package:project1/widgets/task/add_task/add_task_topbar.dart';
import 'package:project1/widgets/task/add_task/taskfields/task_field.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children: const [
            AddTaskTopbar(),
            SizedBox(
              height: 20,
            ),
            Expanded(child: TaskField()),
          ],
        ),
      ),
    ));
  }
}
