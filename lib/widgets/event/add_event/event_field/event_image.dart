import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/image_chooser.dart';
import 'package:project1/functions/others/image_picker.dart';
import 'package:project1/utilities.dart';

class EventImage extends StatefulWidget {
  const EventImage({super.key});

  @override
  State<EventImage> createState() => _EventImageState();
}

class _EventImageState extends State<EventImage> {
  String path = 'assets/images/dummy.jpg';
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    // var myimage = File(path);
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        // border: Border.all(
        //     color: const Color.fromARGB(255, 54, 191, 121), width: 1)
      ),
      child: GestureDetector(
        child: chooseImage(flag, path),
        onTap: () async {
          var newpath = await pickImage();
          setState(() {
            // print('1st$path');
            flag = true;
            path = newpath;
            eventelements[5] = path;
            // print(path);
          });
        },
      ),
    );
  }
}
