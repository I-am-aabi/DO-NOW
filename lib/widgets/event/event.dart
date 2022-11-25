import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_view_event.dart';
import 'package:project1/utilities.dart';

class Event extends StatelessWidget {
  const Event(
      {super.key,
      required this.discription,
      required this.date,
      required this.time,
      required this.path,
      required this.index});
  final String discription;
  final String date;
  final String time;
  final String path;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => tapViewEvent(context, index),
      child: Container(
        decoration: BoxDecoration(
          color: container,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top:15,bottom: 15,left: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 220,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(fit: BoxFit.cover, image: FileImage(File(path))),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                date,
                style: TextStyle(color: textcolor, fontSize: 12,
                fontFamily: 'suii'),
              ),
              Text(discription,
              style: TextStyle(
                color: textcolor,
                fontFamily: 'suii',
                fontSize: 17
              ),),
              Text(
                time,
                style: TextStyle(color: textcolor, fontSize: 12,
                fontFamily: 'suii'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
