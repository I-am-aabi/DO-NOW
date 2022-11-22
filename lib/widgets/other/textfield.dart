import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task_data_collector.dart';

class MyTextField extends StatelessWidget {
   MyTextField(
      {super.key, required this.hint,});
  final String hint;
  
  final fieldcontroller = TextEditingController();
  // allelements new allelements()

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldcontroller,
      style: TextStyle(color: Color.fromARGB(255, 54, 191, 121)),
      decoration: InputDecoration(
        hintText: hint,
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
    );
  }
}
