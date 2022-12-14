import 'package:flutter/material.dart';
// import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/presentation/widgets/utilities.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.hint,
    required this.fieldcontroller,
    this.fieldiconData,  this.initial,
  });
  final String hint;

  final String? initial;
  final TextEditingController fieldcontroller;

  final IconData? fieldiconData;
  // allelements new allelements()
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // initialValue: widget.initial,
      controller: fieldcontroller,
      style: TextStyle(color: textcolor),
      decoration: InputDecoration(
        prefixIcon: Icon(
          fieldiconData,
          color: selection,
        ),
        hintText: hint,
        hintStyle: TextStyle(color: topbar),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: selection,
            width: 0.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: selection,
            width: 0.7,
          ),
        ),
      ),
    );
  }
}
