import 'package:flutter/cupertino.dart';
import 'package:project1/Database/functions/task/add_task.dart';
import 'package:project1/Database/functions/task/get_all_task.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/get_date_info.dart';
import 'package:project1/utilities.dart';

class TaskDateCreater extends StatelessWidget {
  TaskDateCreater({
    super.key,
    required this.dateid,
  });
  final String dateid;

  @override
  Widget build(BuildContext context) {
    // datelist;
    String date = dateInfo(dateid);
    // getAllTask();
    if (date == '') {
      return const SizedBox.shrink();
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          color: container,
        ),
        height: 40,
        width: 40,
        child: Center(
          child: Text(
            date,
            style: TextStyle(color: textcolor, fontSize: 25),
          ),
        ),
      );
    }
  }
}
