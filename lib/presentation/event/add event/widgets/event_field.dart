import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/presentation/widgets/time_field.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/event/add%20event/widgets/event_categories.dart';
import 'package:project1/presentation/event/add%20event/widgets/event_image.dart';
import 'package:project1/presentation/widgets/date_field.dart';
import 'package:project1/presentation/widgets/textfield.dart';

var _eventdescription = TextEditingController();
var _eventlocation = TextEditingController();
final _evendate = TextEditingController();
final _eventtime = TextEditingController();

class EventField extends StatelessWidget {
  const EventField({super.key});

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
             CategoriesEvent(initial: 'category'),
            const SizedBox(
              height: 10,
            ),

             EventImage(flag: false),

            // print('called'),
          ],
        ),
      ),
    );
  }

  onAddevent() {
    eventelements[0] = _eventdescription.text;
    eventelements[1] = _eventlocation.text.trim();
  }
}
