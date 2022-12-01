import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/add_task.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/task_date_creat.dart';

class taskDates extends StatelessWidget {
  const taskDates({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
          height: 50,
          color: background,
          child: ValueListenableBuilder(
            valueListenable: taskListNotifier,
            builder: (BuildContext ctx2, taskList, Widget? child) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx3, index) {
                    final data = taskList[index];
                    return TaskDateCreater(
                      dateid: data.dateid,
                    );
                  },
                  separatorBuilder: ((ctx3, index) {
                    return const SizedBox(
                      width: 5,
                    );
                  }),
                  itemCount: taskList.length);
            },
          )),
    );
  }
}
