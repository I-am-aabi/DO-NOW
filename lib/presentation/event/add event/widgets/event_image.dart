// ignore_for_file: prefer_typing_uninitialized_variables
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project1/functions/others/image_chooser.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/providers/event_providers.dart';
import '../../../../Database/functions/task/task_data_collector.dart';
import '../../../../functions/others/image_picker.dart';

// ignore: must_be_immutable
class EventImage extends StatelessWidget {
  EventImage({super.key, required this.flag, this.imagepath});
  var flag;
  var imagepath;
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
          final imagewatch = ref.watch(eventImageProvider);
          return GestureDetector(
            child: imagewatch == ''
                ? chooseImage(flag, imagepath)
                : Image.file(File(imagewatch)),
            onTap: () async {
              final imagewatch = await pickImage();
              ref.read(eventImageProvider.notifier).state = imagewatch;
              elements[5] = imagewatch;
            }
          );
        },
      ),
    );
  }
}
