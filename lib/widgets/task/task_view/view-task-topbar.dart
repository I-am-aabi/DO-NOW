import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_edit-task.dart';
import 'package:project1/Database/functions/task/task_delete.dart';

class ViewTaskTopbar extends StatelessWidget {
  const ViewTaskTopbar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            tapEditTask(context);
          },
          icon: const Icon(Icons.edit),
          iconSize: 32,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
        const Text(
          'VIEW TASK',
          style: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(255, 54, 191, 121),
          ),
        ),
        IconButton(
          onPressed: () {
            deleteTask(index, context);
          },
          icon: const Icon(Icons.delete),
          iconSize: 33,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
      ],
    );
  }
}
