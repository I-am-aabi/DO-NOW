import 'package:flutter/material.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';
import 'package:project1/widgets/other/time_field.dart';
import 'package:project1/widgets/task/add_task/categories_task.dart';
import 'package:project1/widgets/task/edit_task/edit_taskfields/status_categories.dart';

final _discriptioneditcontroller = TextEditingController();
final _locationeditcontroller = TextEditingController();
final _dateeditcontroller = TextEditingController();
final _timeeditingcontroller = TextEditingController();

class EditTaskField extends StatelessWidget {
  const EditTaskField({super.key, this.task});
  final TaskModel? task;

  @override
  Widget build(BuildContext context) {
    _discriptioneditcontroller.text = task!.discription;
    _locationeditcontroller.text = task!.location;
    _dateeditcontroller.text = task!.date;
    _timeeditingcontroller.text = task!.time;
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
                Expanded(
                    child: TimeField(
                  timecontroller: _timeeditingcontroller,
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
             CategoriesTask(intial: task!.category),
            const SizedBox(
              height: 10,
            ),
            CategoriesStatus(initail: task!.status,)
          ],
        ),
      ),
    );
  }
  
  onEditTask() {
    
    elements[0] = _discriptioneditcontroller.text;
 
    elements[1] = _locationeditcontroller.text.trim();
  }
}
