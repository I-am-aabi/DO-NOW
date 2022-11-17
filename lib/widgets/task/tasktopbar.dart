import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_addtasks.dart';
import 'package:project1/functions/navigations/ontap_filter.dart';

class TaskTopBar extends StatelessWidget {
  const TaskTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            tapAddTask(context);
          },
          icon: const Icon(Icons.add_circle_outline),
          iconSize: 32,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
        const Text(
          'TASKS',
          style: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(255, 54, 191, 121),
          ),
        ),
        IconButton(
          onPressed: () {
            tapFilter(context);
          },
          icon: const Icon(Icons.filter_alt),
          iconSize: 33,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
      ],
    );
  }
}
