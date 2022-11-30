import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_addtasks.dart';
import 'package:project1/functions/navigations/ontap_filter.dart';
import 'package:project1/functions/navigations/ontap_search.dart';
import 'package:project1/utilities.dart';

class TaskTopBar extends StatelessWidget {
  const TaskTopBar({super.key});

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
              tapAddTask(context);
            },
            icon: const Icon(Icons.add),
            iconSize: 22,
            color: selection,
          ),
        ),
        Text(
          'tasks',
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
              tapSearch(context);
            },
            padding: const EdgeInsets.all(0),
            icon: const Icon(Icons.search),
            iconSize: 22,
            color: selection,
          ),
        ),
      ],
    );
  }
}
