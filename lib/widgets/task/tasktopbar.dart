import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_addtasks.dart';
import 'package:project1/functions/navigations/ontap_filter.dart';
import 'package:project1/utilities.dart';

class TaskTopBar extends StatelessWidget {
  const TaskTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            tapAddTask(context);
          },
          icon: const Icon(Icons.add_circle_outline),
          iconSize: 25,
          color: selection,
        ),
         Text(
          'TASKS',
          style: TextStyle(
            fontSize: 32,
            color: selection,
          ),
        ),
        IconButton(
          onPressed: () {
            tapFilter(context);
          },
          icon: const Icon(Icons.filter_alt),
          iconSize: 25,
          color: selection,
        ),
      ],
    );
  }
}
