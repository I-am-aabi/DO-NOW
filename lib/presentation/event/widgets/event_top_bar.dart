
import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_addevent.dart';
import 'package:project1/functions/navigations/ontap_search.dart';

import 'package:project1/presentation/widgets/utilities.dart';

class EventTopBar extends StatelessWidget {
  const EventTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       
        Text(
          'events',
          style: TextStyle(
              fontSize: 29,
              color: selection,
              fontFamily: 'suii',
              fontWeight: FontWeight.w300),
        ),
        Row(
          children: [
             SizedBox(
          height: 25,
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              tapAddEvent(context);
            },
            icon: const Icon(Icons.add),
            iconSize: 22,
            color: selection,
          ),
        ),
            SizedBox(
              height: 25,
              child: IconButton(
                onPressed: () {
                   tapSearch(context);
                },
                padding: const EdgeInsets.all(0),
                icon: const Icon(Icons.search),
                iconSize: 22,
                color: selection,
              ),
            ),
              SizedBox(
              height: 25,
              child: IconButton(
                onPressed: () {
                   tapSearch(context);
                },
                padding: const EdgeInsets.all(0),
                icon: const Icon(Icons.settings),
                iconSize: 22,
                color: selection,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
