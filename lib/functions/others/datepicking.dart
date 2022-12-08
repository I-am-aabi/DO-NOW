import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';

Future<String> pickDate(context) async {
  DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), //get today's date
      firstDate: DateTime(
          2000), //DateTime.now() - not to allow to choose before today.
      lastDate: DateTime(2101));
  if (pickedDate != null) {
    String selectedDate = DateFormat('dd MMM yyyy').format(pickedDate);
    String dateforid = DateFormat('dd MM yyyy').format(pickedDate);
    elements[8] = dateforid;
    return selectedDate;
  } else {
    return 'no date picked';
  }
}
