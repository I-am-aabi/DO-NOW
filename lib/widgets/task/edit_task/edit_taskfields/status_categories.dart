import 'package:flutter/material.dart';

class CategoriesStatus extends StatefulWidget {
  const CategoriesStatus({super.key});

  @override
  State<CategoriesStatus> createState() => _CategoriesStatus();
}

class _CategoriesStatus extends State<CategoriesStatus> {
  // var dropitems = ['work', 'persnal', 'finantial'];
  String _dropDownValue = 'upcoming';
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
                ? const Text('upcoming')
                : Text(
                    _dropDownValue,
                    style: const TextStyle(color: Color.fromARGB(255, 69, 179, 75)),
                  ),
            isExpanded: true,
            iconSize: 30.0,
            style: const TextStyle(color: Color.fromARGB(255, 78, 190, 86)),
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
                },
              );
            },
          ),
        ),
      ),
    );
  }
}