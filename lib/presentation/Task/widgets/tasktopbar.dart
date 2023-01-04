import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_addtasks.dart';
import 'package:project1/functions/navigations/ontap_search.dart';
import 'package:project1/presentation/settings/settings_screen.dart';
import 'package:project1/presentation/widgets/utilities.dart';

class TaskTopBar extends StatelessWidget {
  const TaskTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'tasks',
          style: TextStyle(
            fontFamily: 'suii',
            fontWeight: FontWeight.w500,
            fontSize: 29,
            color: selection,
          ),
        ),
        Row(
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
            SizedBox(
              height: 25,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const SettingsScreen())));
                },
                padding: const EdgeInsets.all(0),
                icon: const Icon(Icons.settings),
                iconSize: 22,
                color: selection,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
