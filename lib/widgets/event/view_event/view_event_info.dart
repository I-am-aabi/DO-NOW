import 'package:flutter/material.dart';
import 'package:project1/widgets/task/task_view/task_field_info.dart';

class ViewEventInfo extends StatelessWidget {
  const ViewEventInfo({super.key});

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
              const FieldInfo(
                heading: 'Description',
                tailing: 'Christmas',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Date',
                tailing: '25-12-2022',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Time',
                tailing: '8:00 PM',
              ),
              const SizedBox(
                height: 10,
              ),
              const FieldInfo(
                heading: 'Location',
                tailing: 'Party hall',
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
                tailing: 'Cultural',
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/festival.jpg'),
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
