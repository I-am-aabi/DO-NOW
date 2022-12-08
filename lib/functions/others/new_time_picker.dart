import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';

String _selectedTime = '';
Future<String> picktime(BuildContext context) async {
  final TimeOfDay? result =
      await showTimePicker(context: context, initialTime: TimeOfDay.now());
  if (result != null) {
    _selectedTime = result.format(context);
    String timegf = result.toString();
    elements[9] = timegf;
    //  String 24time = (DateFormat('HHmm').format(result));
    return _selectedTime;
  } else {
    return '';
  }
}
