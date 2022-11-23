import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/widgets/event/add_event/event_field/event_categories.dart';
import 'package:project1/widgets/event/add_event/event_field/event_image.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';
import 'package:project1/widgets/other/time_field.dart';

class EventField extends StatefulWidget {
  const EventField({super.key});

  get onAddevent => null;

  @override
  State<EventField> createState() => _EventFieldState();
}

final _eventdescription = TextEditingController();
final _eventlocation = TextEditingController();
final _evendate = TextEditingController();

class _EventFieldState extends State<EventField> {
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
                hint: 'Description', fieldcontroller: _eventdescription),
            const SizedBox(
              height: 10,
            ),
            MyTextField(hint: 'Location', fieldcontroller: _eventlocation),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [Expanded(child: DateField(datecontroller: _evendate)), Expanded(child: TimeField())],
            ),

            const SizedBox(
              height: 10,
            ),
            const CategoriesEvent(),
            const SizedBox(
              height: 10,
            ),

            const EventImage(),

            // print('called'),
          ],
        ),
      ),
    );
  }

  onAddevent() {
    elements[0] = _eventdescription.text;
    elements[1] = _eventlocation.text.trim();
  }
}
