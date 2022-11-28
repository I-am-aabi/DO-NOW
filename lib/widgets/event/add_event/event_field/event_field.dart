import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/event/add_event/event_field/event_categories.dart';
import 'package:project1/widgets/event/add_event/event_field/event_image.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';
import 'package:project1/widgets/other/time_field.dart';

var _eventdescription = TextEditingController();
var _eventlocation = TextEditingController();
final _evendate = TextEditingController();
final _eventtime = TextEditingController();

class EventField extends StatelessWidget {
  EventField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        // border: Border.all(
        //     color: const Color.fromARGB(255, 54, 191, 121), width: 2)
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 5,
            ),
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
              children: [
                Expanded(child: DateField(datecontroller: _evendate)),
                Expanded(child: TimeField(timecontroller: _eventtime,))
              ],
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
    print('onaddcalled');
    eventelements[0] = _eventdescription.text;
    print(eventelements[0]);
    eventelements[1] = _eventlocation.text.trim();
  }
}
