import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_adder.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/event/add_event/event_field/event_field.dart';

class AddEventTopbar extends StatelessWidget {
  const AddEventTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.cancel),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
        Text(
          'add event',
          style: TextStyle(
            fontSize: 27,
            color: selection,
            fontFamily: 'suii'
          ),
        ),
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              const EventField().onAddevent();
              eventAdder(context);
            },
            icon: const Icon(Icons.done_outline),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
