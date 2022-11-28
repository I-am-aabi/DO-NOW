import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';
import 'package:project1/widgets/other/time_field.dart';
import 'package:project1/widgets/task/add_task/categories_task.dart';

// typedef Taskvalue = TaskModel Function(TaskModel);

var _descriptioncontroller = TextEditingController();
var _locationcontroller = TextEditingController();
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
            MyTextField(
                hint: 'Description', fieldcontroller: _descriptioncontroller,fieldiconData: Icons.subject),
            const SizedBox(
              height: 10,
            ),
            MyTextField(hint: 'Location', fieldcontroller: _locationcontroller,fieldiconData: Icons.location_on),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(child: DateField(datecontroller: _datecontroller)),
                const SizedBox(width: 5,),
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
    elements[0] = _descriptioncontroller.text.trim();

    elements[1] = _locationcontroller.text.trim();
    // print(elements[1]);
  }
}
