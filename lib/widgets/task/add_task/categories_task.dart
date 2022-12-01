// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/utilities.dart';

class CategoriesTask extends StatefulWidget {
   CategoriesTask({super.key, required this.intial});
  var intial;

  @override
  State<CategoriesTask> createState() => _CategoriesTaskState();
}

class _CategoriesTaskState extends State<CategoriesTask> {
  String _dropDownValue = '';

  @override
  Widget build(BuildContext context) {
    _dropDownValue = widget.intial;
    return Container(
       decoration: BoxDecoration(
                    color: container,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: selection, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('category:'),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 130.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: background,
                    // ignore: unnecessary_null_comparison
                    hint: _dropDownValue == null
                        ? const Text('category')
                        : Text(
                            _dropDownValue,
                            style: TextStyle(color: textcolor),
                          ),
                    isExpanded: true,
                    iconSize: 30.0,
                    style: TextStyle(color: selection,fontFamily: 'suii',fontSize: 15),
                    items: ['work', 'personal', 'shopping'].map(
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
                          elements[4] = _dropDownValue;
                          widget.intial = _dropDownValue;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
