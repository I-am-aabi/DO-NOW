import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';

class EditTaskTopbar extends StatelessWidget {
  const EditTaskTopbar({super.key});

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
            icon: const Icon(Icons.close),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
         Text(
          'edit task',
          style: TextStyle(
            fontSize: 27,
            color: selection,
            fontFamily: 'suii'
          ),
        ),
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: () {},
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
