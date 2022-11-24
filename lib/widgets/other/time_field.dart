import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/new_time_picker.dart';
import 'package:project1/utilities.dart';

// ignore: must_be_immutable
class TimeField extends StatelessWidget {
  TimeField({super.key});
  // ignore: non_constant_identifier_names
  String Time = '';
  final timecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: timecontroller,
      style: TextStyle(color: textcolor),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.timer,
          color: selection,
        ),
        //  labelText: "Enter Date",
        hintText: 'Time',
        hintStyle: TextStyle(color: topbar),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: selection,
            width: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: selection,
            width: 1.3,
          ),
        ),
      ),
      readOnly: true,
      onTap: () async {
        Time = await picktime(context);
        eventelements[3] = Time;
        timecontroller.text = Time;
      },
    );
  }
}
