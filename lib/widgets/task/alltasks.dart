import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/Database/functions/task/add_task.dart';
import 'package:project1/Database/functions/task/get_all_task.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/task.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    getAllTask();
    return Container(
        decoration: BoxDecoration(
          color: background,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          // border: Border.all(
          //     color: const Color.fromARGB(255, 54, 191, 121), width: 2)
        ),
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
                    category: data.category,
                  );
                },
                separatorBuilder: (ctx1, index) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: SizedBox(
                      height: 5,
                    ),
                  );
                },
                itemCount: taskList.length);
          },
        ));
  }
}
