import 'package:flutter/material.dart';
import 'package:project1/widgets/task/edit_task/edit_task_topbar.dart';
import 'package:project1/widgets/task/edit_task/edit_taskfields/edit_task_ifield.dart';

class EditTask extends StatelessWidget {
  const EditTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children: const [
            EditTaskTopbar(),
            SizedBox(
              height: 20,
            ),
            Expanded(child: EditTaskField()),
          ],
        ),
      ),
    ));
  }
}
