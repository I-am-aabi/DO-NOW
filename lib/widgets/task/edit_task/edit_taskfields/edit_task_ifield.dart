import 'package:flutter/material.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';
import 'package:project1/widgets/task/edit_task/edit_taskfields/edit_task_categories.dart';
import 'package:project1/widgets/task/edit_task/edit_taskfields/status_categories.dart';

class EditTaskField extends StatelessWidget {
  const EditTaskField({super.key});

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
            const MyTextField(hint: 'Change vehicle oil'),
            const SizedBox(
              height: 10,
            ),
            const MyTextField(hint: 'Kochi'),
            const SizedBox(
              height: 10,
            ),
            const DateField(),
            const SizedBox(
              height: 10,
            ),
            const CategoriesEditTask(),
            const SizedBox(
              height: 10,
            ),
            const CategoriesStatus()
            
            // const EventImage(),
            

           
           
            // print('called'),
          ],
        ),
      ),
    );
  }
}
