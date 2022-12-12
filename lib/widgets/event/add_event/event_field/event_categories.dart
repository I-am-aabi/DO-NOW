// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/utilities.dart';

// ignore: must_be_immutable
class CategoriesEvent extends StatefulWidget {
  CategoriesEvent({super.key, required this.initial});
  var initial;
  @override
  State<CategoriesEvent> createState() => _CategoriesEventState();
}

class _CategoriesEventState extends State<CategoriesEvent> {
  String _dropDownValue = '';
  @override
  Widget build(BuildContext context) {
    _dropDownValue = widget.initial;
    return Container(
      decoration: BoxDecoration(
          color: container,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: selection, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: background,
            // ignore: unnecessary_null_comparison
            hint: _dropDownValue == null
                ? const Text('categories')
                : Text(
                    _dropDownValue,
                    style: TextStyle(color: textcolor),
                  ),
            isExpanded: true,
            iconSize: 30.0,
            style: TextStyle(color: textcolor),
            items: ['work', 'family', 'cultural'].map(
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
                  widget.initial = _dropDownValue;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
