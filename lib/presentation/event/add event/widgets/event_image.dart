// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/image_chooser.dart';
import 'package:project1/functions/others/image_picker.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/providers/event_providers.dart';

// ignore: must_be_immutable
class EventImage extends StatelessWidget {
  EventImage({super.key, required this.flag, this.imagepath});
  var flag;
  var imagepath;
  String path = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
      child: Consumer(
        builder: (context, ref, child) {
          if (imagepath == null || imagepath == '' && flag == false) {
            path = 'assets/images/dummy.jpg';
          } else {
            path = imagepath;
           
          }
          final imagewatch = ref.watch(eventImageProvider);
          return GestureDetector(
            onTap: () async {
              ref.read(eventImageProvider.notifier).state = await pickImage();
              path = ref.read(eventImageProvider.notifier).state;
              flag = true;
              elements[5] = path;
              imagepath = path;
            },

            child: chooseImage(flag, imagewatch),
          );
        },
      ),
    );
  }
}
