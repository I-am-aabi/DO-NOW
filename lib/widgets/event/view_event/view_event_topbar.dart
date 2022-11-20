import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_edit-task.dart';
import 'package:project1/functions/navigations/ontap_edit_event.dart';

class ViewEventTopbar extends StatelessWidget {
  const ViewEventTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            tapEditEvent(context);
          },
          icon: const Icon(Icons.edit),
          iconSize: 32,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
        const Text(
          'VIEW EVENT',
          style: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(255, 54, 191, 121),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.delete),
          iconSize: 33,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
      ],
    );
  }
}