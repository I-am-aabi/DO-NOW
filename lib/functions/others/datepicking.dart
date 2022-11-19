import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<String> pickDate(context) async {
  DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), //get today's date
      firstDate: DateTime(
          2000), //DateTime.now() - not to allow to choose before today.
      lastDate: DateTime(2101));
  if (pickedDate != null) {
    String _selectedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    return _selectedDate;
  } else {
    return 'no date picked';
  }
}
