import 'package:flutter/material.dart';
import 'package:project1/functions/datepicking.dart';

class DateField extends StatelessWidget {
  const DateField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color.fromARGB(255, 54, 191, 121)),
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.calendar_today,
          color: Color.fromARGB(255, 54, 191, 121),
        ),
        //  labelText: "Enter Date",
        hintText: 'Date',
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
        pickDate(context);
      },
    );
  }
}
