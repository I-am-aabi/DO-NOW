import 'package:flutter/material.dart';
import 'package:project1/widgets/event/add_event/event_field/event_categories.dart';
import 'package:project1/widgets/event/add_event/event_field/event_image.dart';
import 'package:project1/widgets/other/date_field.dart';
import 'package:project1/widgets/other/textfield.dart';

class EventField extends StatefulWidget {
  const EventField({super.key});

  @override
  State<EventField> createState() => _EventFieldState();
}

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
            const MyTextField(hint: 'Description'),
            const SizedBox(
              height: 10,
            ),
            const MyTextField(hint: 'Location'),
            const SizedBox(
              height: 10,
            ),
            const DateField(),
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
}
