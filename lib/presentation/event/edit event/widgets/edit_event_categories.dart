import 'package:flutter/material.dart';

class CategoriesEditEvent extends StatefulWidget {
  const CategoriesEditEvent({super.key});

  @override
  State<CategoriesEditEvent> createState() => _CategoriesEditEvent();
}

class _CategoriesEditEvent extends State<CategoriesEditEvent> {
  // var dropitems = ['Family', 'work', 'cultural'];
  String _dropDownValue = 'Cultural';
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
              color: const Color.fromARGB(255, 54, 191, 121), width: 2)),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0,right: 8),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            dropdownColor: const Color.fromARGB(255, 13, 33, 15),
            // ignore: unnecessary_null_comparison
            hint: _dropDownValue == null
                ? const Text('categories')
                : Text(
                    _dropDownValue,
                    style: const TextStyle(color: Color.fromARGB(255, 69, 179, 75)),
                  ),
            isExpanded: true,
            iconSize: 30.0,
            style: const TextStyle(color: Color.fromARGB(255, 78, 190, 86)),
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
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
