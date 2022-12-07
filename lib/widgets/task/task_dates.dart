
import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';

class TaskDate extends StatelessWidget {
  const TaskDate({super.key, required this.date});
  final String date;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: double.infinity,
      child: Text(date,
      style: TextStyle(
        color: textcolor,
        fontFamily: 'suii',
        fontSize: 25
      ),)
    );
  }
}
