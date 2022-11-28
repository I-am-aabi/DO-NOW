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
        SizedBox(
          height: 25,
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
            iconSize: 22,
            color: selection,
          ),
        ),
        Text(
          'add tasks',
          style: TextStyle(
            fontFamily: 'suii',
            fontWeight: FontWeight.w300,
            fontSize: 27,
            color: selection,
          ),
        ),
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              TaskField().onAddTask();
              taskAdder();
              Navigator.pop(context);
            },
            padding: const EdgeInsets.all(0),
            icon: const Icon(Icons.done),
            iconSize: 22,
            color: selection,
          ),
        ),
      ],
    );
  }
}
