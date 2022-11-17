import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/widgets/task/task.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:  BoxDecoration(
      color: Color.fromARGB(255, 0, 0, 0),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      border: Border.all(color: const Color.fromARGB(255, 54, 191, 121),width: 2)
     ),
      width: double.infinity,
      // child: getNextEvent(),
      child: ListView(
        children: const [
          Task(),
          Task()
        ],
      ),
    );
  }
}