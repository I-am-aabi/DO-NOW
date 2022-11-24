import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_addevent.dart';
import 'package:project1/functions/navigations/ontap_filter_event.dart';
import 'package:project1/utilities.dart';

class EventTopBar extends StatelessWidget {
  const EventTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            tapAddEvent(context);
          },
          icon: const Icon(Icons.add_circle_outline),
          iconSize: 25,
          color: topbar,
        ),
         Text(
          'EVENTS',
          style: TextStyle(
            fontSize: 32,
            color: selection,
          ),
        ),
        IconButton(
          onPressed: () {
            tapEventFilter(context);
          },
          icon: const Icon(Icons.filter_alt),
          iconSize: 25,
          color: topbar,
        ),
      ],
    );
  }
}
