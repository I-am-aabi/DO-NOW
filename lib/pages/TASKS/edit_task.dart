import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/edit_task/edit_task_topbar.dart';
import 'package:project1/widgets/task/edit_task/edit_taskfields/edit_task_ifield.dart';

class EditTask extends StatelessWidget {
  const EditTask({super.key, required this.task, this.keyvalue,});
  final TaskModel? task;
  final dynamic keyvalue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children: [
            EditTaskTopbar(keyvalue: keyvalue),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: EditTaskField(
              task: task,
            )),
          ],
        ),
      ),
    ));
  }
}
