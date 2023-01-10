import 'package:flutter/material.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/presentation/widgets/time_field.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/event/add%20event/widgets/event_categories.dart';
import 'package:project1/presentation/event/add%20event/widgets/event_image.dart';
import 'package:project1/presentation/widgets/date_field.dart';
import 'package:project1/presentation/widgets/textfield.dart';
import 'package:project1/presentation/widgets/status_categories.dart';

final _discriptioneditcontroller = TextEditingController();
final _locationeditcontroller = TextEditingController();
final _dateeditcontroller = TextEditingController();
final _timeeditingcontroller = TextEditingController();
class EditEventField extends StatelessWidget {
  const EditEventField({super.key, this.event});
  final eventModel? event;
  @override
  Widget build(BuildContext context) {
    _discriptioneditcontroller.text = event!.discription;
    _locationeditcontroller.text = event!.location;
    _dateeditcontroller.text = event!.date;
    _timeeditingcontroller.text = event!.time;
    return Container(
      decoration: BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            MyTextField(
              hint: 'Description',
              fieldcontroller: _discriptioneditcontroller,
              fieldiconData: Icons.subject,
              initial: event?.discription,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hint: 'Location',
              fieldcontroller: _locationeditcontroller,
              fieldiconData: Icons.location_on,
              initial: event?.location,
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
            CategoriesEvent(initial: event?.category),
            const SizedBox(
              height: 10,
            ),
            CategoriesStatus(
              initail: event!.status,
            ),
            const SizedBox(
              height: 10,
            ),
            EventImage(flag: true, imagepath: event?.path),
          ],
        ),
      ),
    );
  }
  onEditevent() {
    elements[0] = _discriptioneditcontroller.text;
    elements[1] = _locationeditcontroller.text;
    _dateeditcontroller.clear();
    _locationeditcontroller.clear();
    _discriptioneditcontroller.clear();
    _timeeditingcontroller.clear();
  }
}
