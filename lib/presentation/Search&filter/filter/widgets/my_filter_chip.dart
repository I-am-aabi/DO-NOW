import 'package:flutter/material.dart';
import 'package:project1/functions/others/search_boxes.dart';
import 'package:project1/presentation/widgets/utilities.dart';

class MyFilterChip extends StatefulWidget {
  const MyFilterChip(
      {super.key,
      required this.label,
      required this.notifier,
      required this.index});

  final String label;
  final int index;
  final ValueNotifier notifier;
  @override
  State<MyFilterChip> createState() => _MyFilterChipState();
}

class _MyFilterChipState extends State<MyFilterChip> {
  @override
  Widget build(BuildContext context) { 
    return Expanded(
      child: FilterChip(
        label: Text(
          widget.label,
          style: TextStyle(color: textcolor, fontFamily: 'suii', fontSize: 17),
        ),
        selected: state,
        backgroundColor: container,
        shape: const StadiumBorder(side: BorderSide()),
        selectedColor: const Color.fromARGB(255, 155, 203, 242),
        onSelected: (bool value) {
          setState(() {
            state = value;
            filtercheck = value;
          });
          if (value == true) {
            categoryvalues[widget.index] = widget.label;
          } else {
            categoryvalues[widget.index] = '';
          }
          widget.notifier.notifyListeners();
        },
      ),
    );
  }
}
