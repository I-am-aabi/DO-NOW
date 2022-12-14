import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/presentation/widgets/time_field.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/widgets/date_field.dart';
import 'package:project1/presentation/widgets/textfield.dart';

import 'package:project1/presentation/Task/add%20task/widgets/categories_task.dart';

// typedef Taskvalue = TaskModel Function(TaskModel);

var _descriptioncontroller = TextEditingController();
var _locationcontroller = TextEditingController();
final _datecontroller = TextEditingController();
final _timecontroller = TextEditingController();

class TaskField extends StatelessWidget {
  const TaskField({
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
                hint: 'Description',
                fieldcontroller: _descriptioncontroller,
                fieldiconData: Icons.subject),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
                hint: 'Location',
                fieldcontroller: _locationcontroller,
                fieldiconData: Icons.location_on),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(child: DateField(datecontroller: _datecontroller)),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: TimeField(
                  timecontroller: _timecontroller,
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CategoriesTask(initial: 'Category'),
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
    _descriptioncontroller.clear();
    _locationcontroller.clear();
    _datecontroller.clear();
    _timecontroller.clear();
    // print(elements[1]);
  }
}
