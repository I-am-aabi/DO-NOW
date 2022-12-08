import 'package:flutter/material.dart';

dateRangePick(){
  DateTimeRange dateRange =
    DateTimeRange(start: DateTime.now(), end: DateTime(2022, 12, 25));

Future picRange(BuildContext context, Function function) async {
  DateTimeRange? newDateRange = await showDateRangePicker(
    context: context,
    initialDateRange: dateRange,
    firstDate: DateTime(1900),
    lastDate: DateTime(2100),
  );
  if (newDateRange == null) return;
  dateRange = newDateRange;
}
}