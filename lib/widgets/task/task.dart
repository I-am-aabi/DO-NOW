import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_viewtask.dart';

class Task extends StatelessWidget {
  const Task({super.key, required this.discription, required this.date, required this.time});
  final String discription;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            discription,
            style: TextStyle(
                color: Color.fromARGB(255, 54, 191, 121), fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Text(
                 date,
                style: TextStyle(
                    color: Color.fromARGB(255, 54, 191, 121), fontSize: 16),
              ),
              IconButton(
                onPressed: (() {
                  tapviewTask(context);
                }),
                icon: const Icon(Icons.visibility),
                color: const Color.fromARGB(255, 78, 190, 86),
              ),
               Text(
                time,
                style: TextStyle(
                    color: Color.fromARGB(255, 54, 191, 121), fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
