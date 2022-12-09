import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_viewtask.dart';
import 'package:project1/functions/others/get_date_info.dart';
import 'package:project1/functions/others/iconfind.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/task_dates.dart';
import '../../Database/functions/task/task_data_collector.dart';

class Task extends StatelessWidget {
  Task(
      {super.key,
      required this.discription,
      required this.date,
      required this.time,
      required this.category,
      required this.id});
  final String discription;
  final String date;
  final String time;
  final String id;
  final String category;
  bool _datestat = false;
  @override
  Widget build(BuildContext context) {
    _datestat = dateInfo(date);
    return GestureDetector(
      onTap: () {
        tapviewTask(context, id);
      },
      child: Column(
        children: [
          Visibility(visible: _datestat, child: TaskDate(date: date)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: container,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              height: 82,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Icon(
                            findIcon(category),
                            color: selection,
                            size: 32,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              discription,
                              style: TextStyle(
                                  color: textcolor,
                                  fontSize: 18,
                                  fontFamily: 'suii'),
                            ),
                            Text(
                              time,
                              style: TextStyle(
                                  fontFamily: 'suii',
                                  fontSize: 12,
                                  color: textcolor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                      child: IconButton(
                        onPressed: () {},
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(Icons.navigate_next_outlined),
                        iconSize: 22,
                        color: selection,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
bool dateInfo(String date) {
  List datelists = datelist;
  for (int i = 0; i <= datelists.length - 1; i++) {
    if (date == datelists[i]) {
      return false;
    }
  }
  datelist.add(date);
  return true;
}
}
