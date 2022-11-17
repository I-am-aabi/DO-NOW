import 'package:flutter/material.dart';
import 'package:project1/widgets/event/edit_event/edit_event_fields/edit_event_field.dart';
import 'package:project1/widgets/event/edit_event/edit_event_toopbar.dart';

class EditEvent extends StatelessWidget {
  const EditEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children: const [
            EditEventTopbar(),
            SizedBox(
              height: 20,
            ),
            Expanded(child: EditEventField()),
          ],
        ),
      ),
    ));
  }
}
