import 'package:flutter/material.dart';
import 'package:project1/functions/ontap_addevent.dart';

class EventTopBar extends StatelessWidget {
  const EventTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            tapAddEvent(context);
          },
          icon: const Icon(Icons.add_circle_outline),
          iconSize: 32,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
        const Text(
          'EVENTS',
          style: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(255, 54, 191, 121),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.filter_alt),
          iconSize: 33,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
      ],
    );
  }
}
