import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_view_event.dart';
import 'package:project1/utilities.dart';

class Event extends StatelessWidget {
  const Event({super.key, required this.discription, required this.date, required this.time, required this.path, required this.index});
  final String discription;
  final String date;
  final String time;
  final String path;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
             discription,
          style: TextStyle(color: textcolor, fontSize: 20),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 200,
          width: 200,
          child: Image.file(File(path),
       
          scale: 1.5,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              date,
              style: TextStyle(color: textcolor, fontSize: 20),
            ),
            IconButton(
              onPressed: () {
                tapViewEvent(context,index);
              },
              icon: const Icon(Icons.visibility),
              color: textcolor,
            ),
            Text(
              time,
              style: TextStyle(color: textcolor, fontSize: 20),
            )
          ],
        )
      ],
    );
  }
}
