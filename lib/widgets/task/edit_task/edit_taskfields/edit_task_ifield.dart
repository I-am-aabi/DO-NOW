import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';
import 'package:project1/widgets/other/time_field.dart';
import 'package:project1/widgets/task/add_task/categories_task.dart';

final _discriptioneditcontroller = TextEditingController();
final _locationeditcontroller = TextEditingController();
final _dateeditcontroller = TextEditingController();

class EditTaskField extends StatelessWidget {
  const EditTaskField({super.key, this.task});
  final TaskModel? task;

  @override
  Widget build(BuildContext context) {
    _discriptioneditcontroller.text = task!.discription;
    _locationeditcontroller.text = task!.location;
    _dateeditcontroller.text = task!.date;
    return Container(
      decoration: BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            MyTextField(
              hint: 'Description',
              fieldcontroller: _discriptioneditcontroller,
              fieldiconData: Icons.subject,
              initial: task?.discription,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hint: 'Location',
              fieldcontroller: _locationeditcontroller,
              fieldiconData: Icons.location_on,
              initial: task?.location,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(child: DateField(datecontroller: _dateeditcontroller)),
                const SizedBox(
                  width: 5,
                ),
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
}
