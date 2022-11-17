import 'package:flutter/material.dart';
import 'package:project1/widgets/task/task_view/view-task-topbar.dart';
import 'package:project1/widgets/task/task_view/view_task_info.dart';

class ViewTask extends StatelessWidget {
  const ViewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding:  const EdgeInsets.only(left: 30,right: 30,top: 20),
          child: Column(
            children: const [
              ViewTaskTopbar(),
              SizedBox(
                height: 30,
              ),
              Expanded(child: ViewTaskInfo()),
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