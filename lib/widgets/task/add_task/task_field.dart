import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_data_model.dart';
import 'package:project1/Database/functions/task_data_collector.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';
import 'package:project1/widgets/other/time_field.dart';
import 'package:project1/widgets/task/add_task/categories_task.dart';

// typedef Taskvalue = TaskModel Function(TaskModel);

final _descriptioncontroller = TextEditingController();
final _locationcontroller = TextEditingController();
final _datecontroller = TextEditingController();

class TaskField extends StatelessWidget {
  TaskField({
    super.key,
  });
  // Function<TaskModel> Callback;

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
            MyTextField(
                hint: 'Description', ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(hint: 'Location',),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(child: DateField(datecontroller: _datecontroller)),
                Expanded(child: TimeField())
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const CategoriesTask(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  onAddTask() {
    elements[0] = _descriptioncontroller.toString();
    print(elements[0]);
    elements[1] = _locationcontroller.toString();
  }
}
