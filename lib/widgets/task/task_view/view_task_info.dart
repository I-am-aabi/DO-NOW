import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_data_model.dart';
import 'package:project1/widgets/task/task_view/task_field_info.dart';

class ViewTaskInfo extends StatelessWidget {
  const ViewTaskInfo({super.key,  this.task});
  final TaskModel? task;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(
              color: const Color.fromARGB(255, 54, 191, 121), width: 2)),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
               FieldInfo(
                heading: 'Description',
                tailing: task?.discription,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Date',
                tailing: task?.date,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Time',
                tailing: task?.time,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Location',
                tailing: task?.location,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Status',
                tailing: task?.status,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Category',
                tailing: task?.category,
              ),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.navigate_before_outlined),
                color: const Color.fromARGB(255, 54, 191, 121),
              )
            ]),
      ),
    );
  }

}
