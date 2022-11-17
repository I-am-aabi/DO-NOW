import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:project1/functions/image_picker.dart';

class EventImage extends StatefulWidget {
  const EventImage({super.key});

  @override
  State<EventImage> createState() => _EventImageState();
}

class _EventImageState extends State<EventImage> {
  @override
  Widget build(BuildContext context) {
    String path = 'assets/images/dummy.jpg';
    // var myimage = File(path);
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(
              color: const Color.fromARGB(255, 54, 191, 121), width: 1)),
      child: GestureDetector(
        child: Image.asset(path),
        onTap: () async {
          var newpath = await pickImage();
          setState(() {
            print('1st$path');
            path = newpath;
            print(path);
          });
        },
      ),
    );
  }
}
