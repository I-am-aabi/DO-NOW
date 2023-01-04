import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_edit.dart';
import 'package:project1/presentation/widgets/utilities.dart';

class EditTaskTopbar extends StatelessWidget {
  const EditTaskTopbar({super.key, this.keyvalue,});
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
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
        Text(
          'edit task',
          style: TextStyle(fontSize: 27, color: selection, fontFamily: 'suii'),
        ),
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              onTaskEdit(context, keyvalue);
            },
            icon: const Icon(Icons.done),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
