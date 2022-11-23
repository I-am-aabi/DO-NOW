import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_adder.dart';
import 'package:project1/utilities.dart';

class AddEventTopbar extends StatelessWidget {
  const AddEventTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel),
          iconSize: 25,
          color: selection,
        ),
         Text(
          'ADD EVENTS',
          style: TextStyle(
            fontSize: 32,
            color: selection,
          ),
        ),
        IconButton(
          onPressed: () {
            eventAdder(context);
          },
          icon: const Icon(Icons.done_outline),
          iconSize: 25,
          color: selection
          ,
        ),
      ],
    );
  }
}
