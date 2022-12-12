import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_delete.dart';
import 'package:project1/functions/navigations/ontap_edit_event.dart';
import 'package:project1/utilities.dart';

class ViewEventTopbar extends StatelessWidget {
  const ViewEventTopbar({super.key, required this.index});
  final int index;
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
              tapEditEvent(context,index);
            },
            icon: const Icon(Icons.edit),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
        Text(
          'view event',
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
              eventDelete(context, index);
            },
            icon: const Icon(Icons.delete),
            iconSize: 22,
            color: selection,
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
