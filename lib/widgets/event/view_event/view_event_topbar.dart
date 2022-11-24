import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_delete.dart';
import 'package:project1/functions/navigations/ontap_edit-task.dart';
import 'package:project1/functions/navigations/ontap_edit_event.dart';
import 'package:project1/utilities.dart';

class ViewEventTopbar extends StatelessWidget {
  ViewEventTopbar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            tapEditEvent(context);
          },
          icon: const Icon(Icons.edit),
          iconSize: 25,
          color: topbar,
        ),
        Text(
          'VIEW EVENT',
          style: TextStyle(
            fontSize: 32,
            color: selection,
          ),
        ),
        IconButton(
          onPressed: () {
            eventDelete(context, index);
          },
          icon: const Icon(Icons.delete),
          iconSize: 25,
          color: topbar,
        ),
      ],
    );
  }
}
