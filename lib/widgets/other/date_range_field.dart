import 'package:flutter/material.dart';
import 'package:project1/functions/others/date_range_picker.dart';
import 'package:project1/utilities.dart';

// ignore: must_be_immutable
class DateRangeSelect extends StatelessWidget {
  DateRangeSelect({super.key});
  TextEditingController daterangecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: daterangecontroller,
      style: TextStyle(color: textcolor),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.timer,
          color: selection,
        ),
        //  labelText: "Enter Date",
        hintText: 'Date Range',
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
        await picRange(context);
      },
    );
  }
}
