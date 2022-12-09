import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
 DateTimeRange dateRange =
      DateTimeRange(start: DateTime.now(), end: DateTime(2022, 12, 25));
Future picRange(BuildContext context) async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      initialDateRange: dateRange,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (newDateRange == null) return;
    dateRange = newDateRange;
    dateRangeset = dateRange;
  }