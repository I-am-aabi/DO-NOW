import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/utilities.dart';

class MyTextField extends StatefulWidget {
  MyTextField({
    super.key,
    required this.hint, required this.fieldcontroller,
  });
  final String hint;

  final TextEditingController fieldcontroller;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  // allelements new allelements()
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.fieldcontroller,
      style:  TextStyle(color: textcolor),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle:  TextStyle(color:topbar),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide:  BorderSide(
            color: selection,
            width: 0.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:  BorderSide(
            color: selection,
            width: 0.7,
          ),
        ),
      ),
    );
  }
}
