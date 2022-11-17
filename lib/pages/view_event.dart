import 'package:flutter/material.dart';
import 'package:project1/widgets/event/view_event/view_event_info.dart';
import 'package:project1/widgets/event/view_event/view_event_topbar.dart';
import 'package:project1/widgets/task/task_view/view-task-topbar.dart';
import 'package:project1/widgets/task/task_view/view_task_info.dart';

class ViewEvent extends StatelessWidget {
  const ViewEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding:  const EdgeInsets.only(left: 30,right: 30,top: 20),
          child: Column(
            children: const [
              ViewEventTopbar(),
              SizedBox(
                height: 30,
              ),
              Expanded(child: ViewEventInfo()),
              SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
        
      ),
    );
  }
}