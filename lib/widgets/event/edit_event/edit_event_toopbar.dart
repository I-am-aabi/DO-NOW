import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_edit.dart';
import 'package:project1/utilities.dart';

class EditEventTopbar extends StatelessWidget {
  const EditEventTopbar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
        Text(
          'edit task',
          style: TextStyle(fontSize: 27, color: selection, fontFamily: 'suii'),
        ),
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {
              onEditEvent(context, index);
            },
            icon: const Icon(Icons.done),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
