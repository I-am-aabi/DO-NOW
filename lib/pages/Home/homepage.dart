import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/get_all_task.dart';
import 'package:project1/widgets/event/nextevent.dart';
import 'package:project1/widgets/other/topbar.dart';
import 'package:project1/widgets/task/upcoming_tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    getAllTask();
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
        child: Column(
          children: const [
            TopBar(),
            SizedBox(
              height: 30,
            ),
            NextEvent(),
            SizedBox(
              height: 30,
            ),
            NextTask(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      // bottomNavigationBar: const naviBar()
    ));
  }
}
