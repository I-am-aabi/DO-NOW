import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/datepicking.dart';
import 'package:project1/presentation/widgets/utilities.dart';

// ignore: must_be_immutable
class DateField extends StatelessWidget {
  DateField({super.key, required this.datecontroller});
  String date = '';
  TextEditingController datecontroller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: datecontroller,
      style: TextStyle(color: textcolor),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.calendar_today,
          color: selection,
        ),
        //  labelText: "Enter Date",
        hintText: 'Date',
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
        date = await pickDate(context);
        eventelements[2] = date;
        elements[2] = date;
        datecontroller.text = date;
      },
    );
  }
}
