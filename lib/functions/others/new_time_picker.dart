import 'package:flutter/material.dart';

String _selectedTime = '';
Future<String> picktime(BuildContext context) async {
  final TimeOfDay? result =
      await showTimePicker(context: context, initialTime: TimeOfDay.now());
  if (result != null) {
    _selectedTime = result.format(context);
    return _selectedTime;
  } else {
    return '';
  }
}
