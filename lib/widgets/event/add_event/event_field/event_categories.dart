import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/utilities.dart';

class CategoriesEvent extends StatefulWidget {
  const CategoriesEvent({super.key});

  @override
  State<CategoriesEvent> createState() => _CategoriesEventState();
}

class _CategoriesEventState extends State<CategoriesEvent> {
  // var dropitems = ['Family', 'work', 'cultural'];
  String _dropDownValue = 'Categories';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: container,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              color: selection, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: background,
            // ignore: unnecessary_null_comparison
            hint: _dropDownValue == null
                ? const Text('Categories')
                : Text(
                    _dropDownValue,
                    style:  TextStyle(
                        color: textcolor),
                  ),
            isExpanded: true,
            iconSize: 30.0,
            style:  TextStyle(color: textcolor),
            items: ['Work', 'Family', 'Cultural'].map(
              (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                () {
                  _dropDownValue = val!;
                  eventelements[4] = _dropDownValue;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
