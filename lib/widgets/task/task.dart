import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_viewtask.dart';
import 'package:project1/utilities.dart';

class Task extends StatelessWidget {
  const Task(
      {super.key,
      required this.discription,
      required this.date,
      required this.time, required this.index});
  final String discription;
  final String date;
  final String time;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            discription,
            style:  TextStyle(
                color: textcolor, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style:  TextStyle(
                    color: textcolor, fontSize: 16),
              ),
              IconButton(
                onPressed: (() {
                  tapviewTask(context,index);
                }),
                icon: const Icon(Icons.visibility),
                color: textcolor,
              ),
              Text(
                time,
                style:  TextStyle(
                    color: textcolor, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
