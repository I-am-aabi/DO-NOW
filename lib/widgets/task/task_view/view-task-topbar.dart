// ignore: file_names
import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_edit-task.dart';
import 'package:project1/Database/functions/task/task_delete.dart';
import 'package:project1/utilities.dart';

class ViewTaskTopbar extends StatelessWidget {
  const ViewTaskTopbar({super.key, this.keyvalue, });
  final dynamic keyvalue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              tapEditTask(context, keyvalue);
            },
            icon: const Icon(Icons.edit),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
        Text(
          'view tasks',
          style: TextStyle(fontSize: 27, color: selection, fontFamily: 'suii'),
        ),
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              deleteTask(context, keyvalue);
            },
            icon: const Icon(Icons.delete),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
