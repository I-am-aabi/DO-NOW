// ignore: file_names
import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_edit-task.dart';
import 'package:project1/Database/functions/task/task_delete.dart';
import 'package:project1/utilities.dart';

class ViewTaskTopbar extends StatelessWidget {
  const ViewTaskTopbar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            tapEditTask(context);
          },
          icon: const Icon(Icons.edit),
          iconSize: 25,
          color: topbar,
        ),
         Text(
          'VIEW TASK',
          style: TextStyle(
            fontSize: 32,
            color: selection,
          ),
        ),
        IconButton(
          onPressed: () {
            deleteTask(index, context);
          },
          icon: const Icon(Icons.delete),
          iconSize: 25,
          color: topbar,
        ),
      ],
    );
  }
}
