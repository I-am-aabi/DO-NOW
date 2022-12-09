import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/search_boxes.dart';
import 'package:project1/utilities.dart';

class FilterTopBar extends StatelessWidget {
  const FilterTopBar({super.key, required this.search});
  final ValueNotifier search;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: (() {
              Navigator.pop(context);
              filterclear();
              search.notifyListeners();
              state = false;
              dateRangeset = DateTimeRange(
                  start: DateTime.now(), end: DateTime(2022, 12, 25));
            }),
            icon: Icon(
              Icons.close,
              color: selection,
              size: 22,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
        Text(
          'filter',
          style: TextStyle(color: selection, fontFamily: 'suii', fontSize: 27),
        ),
        SizedBox(
          height: 25,
          child: IconButton(
            onPressed: (() {
              Navigator.pop(context);
              search.notifyListeners();
              state = false;
            }),
            icon: Icon(Icons.done, color: selection, size: 22),
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}
