import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/new_time_picker.dart';

// ignore: must_be_immutable
class TimeField extends StatelessWidget {
  TimeField({super.key});
  // ignore: non_constant_identifier_names
  String Time = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color.fromARGB(255, 54, 191, 121)),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.timer,
          color: Color.fromARGB(255, 54, 191, 121),
        ),
        //  labelText: "Enter Date",
        hintText: 'Time',
        hintStyle: const TextStyle(color: Color.fromARGB(100, 123, 220, 126)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 54, 191, 121),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.green,
            width: 2.0,
          ),
        ),
      ),
      readOnly: true,
      onTap: () async {
        Time = await picktime(context);
        elements[3] = Time;
      },
    );
  }
}
