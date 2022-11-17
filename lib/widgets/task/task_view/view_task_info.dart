import 'package:flutter/material.dart';
import 'package:project1/widgets/task/task_view/task_field_info.dart';

class ViewTaskInfo extends StatelessWidget {
  const ViewTaskInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(
              color: const Color.fromARGB(255, 54, 191, 121), width: 2)),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const FieldInfo(
                heading: 'Description',
                tailing: 'Change car oil',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Date',
                tailing: '31-11-2022',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Time',
                tailing: '10:30 AM',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Location',
                tailing: 'Kochi',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Status',
                tailing: 'Upcoming',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Category',
                tailing: 'personal',
              ),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.navigate_before_outlined),
                  color: const Color.fromARGB(255, 54, 191, 121),)
            ]),
      ),
    );
  }
}
