import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_adder.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/add_task/task_field.dart';

class AddTaskTopbar extends StatelessWidget {
  const AddTaskTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel),
          iconSize: 25,
          color: topbar,
        ),
        Text(
          'ADD TASK',
          style: TextStyle(
            fontSize: 32,
            color: selection,
          ),
        ),
        IconButton(
          onPressed: () {
            TaskField().onAddTask();
      
            taskAdder();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.done_outline),
          iconSize: 25,
          color: topbar,
        ),
      ],
    );
  }
}
