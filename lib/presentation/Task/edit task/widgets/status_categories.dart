

import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/presentation/widgets/utilities.dart';

// ignore: must_be_immutable
class CategoriesStatus extends StatefulWidget {
  CategoriesStatus({super.key,required this.initail});
  // ignore: prefer_typing_uninitialized_variables
  var initail;
  @override
  State<CategoriesStatus> createState() => _CategoriesStatus();
}

class _CategoriesStatus extends State<CategoriesStatus> {
  String _dropDownValue = '';
  @override
  Widget build(BuildContext context) {
    _dropDownValue = widget.initail;
    return Container(
       decoration: BoxDecoration(
                    color: container,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: selection, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Row(
          
          children: [
             Text('Status:',
            style: TextStyle(
              fontFamily: 'suii',
              color: textcolor
            ),),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left:140.0,right: 8),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    dropdownColor: background,
                  hint  : Text(
                            _dropDownValue,
                            style:  TextStyle(
                                color: textcolor),
                          ),
                    isExpanded: true,
                    iconSize: 30.0,
                    style:  TextStyle(color: textcolor,fontFamily: 'suii',fontSize: 17),
                    items: ['upcoming', 'completed', 'pending'].map(
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
                          elements[6] = _dropDownValue;
                          widget.initail = _dropDownValue;
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
