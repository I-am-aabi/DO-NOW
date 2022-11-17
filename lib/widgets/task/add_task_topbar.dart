import 'package:flutter/material.dart';

class AddTaskTopbar extends StatelessWidget {
  const AddTaskTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel),
          iconSize: 32,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
        const Text(
          'ADD TASK',
          style: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(255, 54, 191, 121),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.done_outline),
          iconSize: 33,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
      ],
    );
  }
}
