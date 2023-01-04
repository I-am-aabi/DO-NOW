import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/add_task.dart';
import 'package:project1/Database/functions/task/get_all_task.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/Task/widgets/task.dart';


List datelists = [];

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    getAllTask();
    return Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        width: double.infinity,
        // child: getNextEvent(),
        child: ValueListenableBuilder(
          valueListenable: taskListNotifier,
          builder: (BuildContext ctx, taskList, Widget? child) {
            datelists = [];
            return ListView.separated(
                itemBuilder: (ctx1, index) {
                  taskList.sort((a, b) => a.id.compareTo(b.id));
                  final data = taskList[index];
                  bool status = dateInfo(taskList[index].date);
                  return Task(
                    discription: data.discription,
                    date: data.date,
                    time: data.time,
                    id: data.id,
                    category: data.category,
                    datestat: status,
                  );
                },
                separatorBuilder: (ctx1, index) {
                  return const Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                        height: 5,
                      ));
                },
                itemCount: taskList.length);
          },
        ));
  }

  bool dateInfo(String date) {
    for (int i = 0; i <= datelists.length - 1; i++) {
      if (date == datelists[i]) {
        return false;
      }
    }
    datelists.add(date);
    return true;
  }
}
