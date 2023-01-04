// import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/Task/view%20task/widgets/task_field_info.dart';

class ViewEventInfo extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const ViewEventInfo({super.key, required this.Event});
  // ignore: non_constant_identifier_names
  final eventModel? Event;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        // border: Border.all(
        //     color: const Color.fromARGB(255, 54, 191, 121), width: 2)
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              FieldInfo(
                heading: 'Description',
                tailing: Event?.discription,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Date',
                tailing: Event?.date,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Time',
                tailing: Event?.time,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Location',
                tailing: Event?.location,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Status',
                tailing: Event?.status,
              ),
              const SizedBox(
                height: 10,
              ),
               FieldInfo(
                heading: 'Category',
                tailing: Event?.category,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.file(File(Event!.path)),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.navigate_before_outlined),
                color: selection,
              )
            ]),
      ),
    );
  }
}
