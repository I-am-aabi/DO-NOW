import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_data_model.dart';
import 'package:project1/Database/functions/add_task.dart';
import 'package:project1/widgets/task/task.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 0, 0, 0),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            border: Border.all(
                color: const Color.fromARGB(255, 54, 191, 121), width: 2)),
        width: double.infinity,
        // child: getNextEvent(),
        child: ValueListenableBuilder(
          valueListenable: taskListNotifier,
          builder: (BuildContext ctx, List<TaskModel> taskList, Widget? child) {
            return ListView.separated(
                itemBuilder: (ctx1, index) {
                  final data = taskList[index];
                  return Task(
                    discription: data.discription,
                    date: data.date,
                    time: data.time,
                    index: index,
                  );
                },
                separatorBuilder: (ctx1, index) {
                  return const Divider();
                },
                itemCount: taskList.length);
          },
        ));
  }
}
