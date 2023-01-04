import 'package:flutter/material.dart';
import 'package:project1/functions/others/search_boxes.dart';
import 'package:project1/presentation/widgets/utilities.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key, required, required this.search});
  final ValueNotifier search;

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FilterChip(
          label: const Text('task'),
          onSelected: (bool value) {
            setState(() {
              select = true;
              widget.search.notifyListeners();
            });
          },
          selected: select,
          backgroundColor: background,
          selectedColor: container,
        ),
        FilterChip(
          label: const Text('event'),
          onSelected: (bool value) {
            setState(() {
              select = false;
              widget.search.notifyListeners();
            });
          },
          selected: !select,
          backgroundColor: background,
          selectedColor: container,
        ),
      ],
    );
  }
}
