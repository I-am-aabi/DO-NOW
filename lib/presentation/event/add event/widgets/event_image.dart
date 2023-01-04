
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/image_chooser.dart';
import 'package:project1/functions/others/image_picker.dart';
import 'package:project1/presentation/widgets/utilities.dart';

// ignore: must_be_immutable
class EventImage extends StatefulWidget {
  EventImage({super.key, required this.flag, this.imagepath});

  // ignore: prefer_typing_uninitialized_variables
  var flag;
  // ignore: prefer_typing_uninitialized_variables
  var imagepath;
  @override
  State<EventImage> createState() => _EventImageState();
}

class _EventImageState extends State<EventImage> {
  String path = '';
  @override
  Widget build(BuildContext context) {
    if (widget.imagepath == null || widget.imagepath == '') {
      path = 'assets/images/dummy.jpg';
    } else {
      path = widget.imagepath;
    }
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: GestureDetector(
        child: chooseImage(widget.flag, path),
        onTap: () async {
          var newpath = await pickImage();
          setState(() {
            widget.flag = true;
            path = newpath;
            elements[5] = path;
            widget.imagepath = path;
          });
        },
      ),
    );
  }
}
