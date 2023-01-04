import 'package:flutter/material.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/event/edit%20event/widgets/edit_event_field.dart';
import 'package:project1/presentation/event/edit%20event/widgets/edit_event_toopbar.dart';

class EditEvent extends StatelessWidget {
  const EditEvent({super.key,required this.event, required this.index});
  final eventModel? event;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children:  [
             EditEventTopbar(index: index),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: EditEventField(event: event,)),
          ],
        ),
      ),
    ));
  }
}
