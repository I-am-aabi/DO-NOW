import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/task_view/view-task-topbar.dart';
import 'package:project1/widgets/task/task_view/view_task_info.dart';

import '../../Database/Models/task_model/task_data_model.dart';

class ViewTask extends StatelessWidget {
  const ViewTask({super.key, required this.task, required this.keyvalue,});
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
              ViewTaskTopbar(keyvalue: keyvalue),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                  child: ViewTaskInfo(
                task: task,
              )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
