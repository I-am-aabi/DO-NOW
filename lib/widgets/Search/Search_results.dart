// ignore: file_names
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:project1/widgets/event/event.dart';
import 'package:project1/widgets/task/task.dart';

import '../../Database/Models/task_model/task_data_model.dart';
import '../../functions/others/search_boxes.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key, required this.searchNotifier});

  final ValueNotifier searchNotifier;
  @override
  Widget build(BuildContext context) {
    final List<TaskModel> taskBoxList =
        Hive.box<TaskModel>('task_DB').values.toList();
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: ValueListenableBuilder(
            valueListenable: searchNotifier,
            builder: ((context, value, child) {
              displayTask = taskBoxList
                  .where((element) =>
                      element.discription
                          .toLowerCase()
                          .contains(value.toLowerCase()) &&
                      element.category
                          .toLowerCase()
                          .contains(categoryvalues[0].toLowerCase()) &&
                      element.category
                          .toLowerCase()
                          .contains(categoryvalues[1].toLowerCase()) &&
                      element.category
                          .toLowerCase()
                          .contains(categoryvalues[2].toLowerCase()) &&
                      element.status
                          .toLowerCase()
                          .contains(categoryvalues[3].toLowerCase()) &&
                      element.status
                          .toLowerCase()
                          .contains(categoryvalues[4].toLowerCase()) &&
                      element.status
                          .toLowerCase()
                          .contains(categoryvalues[5].toLowerCase()))
                  .toList();
              displayEvent = eventBoxList
                  .where((element) =>
                      element.discription
                          .toLowerCase()
                          .contains(value.toLowerCase()) &&
                      element.category
                          .toLowerCase()
                          .contains(categoryvalues[0].toLowerCase()) &&
                      element.category
                          .toLowerCase()
                          .contains(categoryvalues[1].toLowerCase()) &&
                      element.category
                          .toLowerCase()
                          .contains(categoryvalues[2].toLowerCase()) &&
                      element.status
                          .toLowerCase()
                          .contains(categoryvalues[6].toLowerCase()) &&
                      element.status
                          .toLowerCase()
                          .contains(categoryvalues[7].toLowerCase()) &&
                      element.status
                          .toLowerCase()
                          .contains(categoryvalues[8].toLowerCase()))
                  .toList();

              if (select == true) {
                return ListView.separated(
                    itemBuilder: ((context, index) {
                      return Task(
                          discription: displayTask[index].discription,
                          date: displayTask[index].date,
                          time: displayTask[index].time,
                          category: displayTask[index].category,
                          id: displayTask[index].id);
                    }),
                    separatorBuilder: ((context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    }),
                    itemCount: displayTask.length);
              } else {
                return ListView.separated(
                    itemBuilder: ((context, index) {
                      return Event(
                          discription: displayEvent[index].discription,
                          date: displayEvent[index].date,
                          time: displayEvent[index].time,
                          path: displayEvent[index].path,
                          index: index);
                    }),
                    separatorBuilder: ((context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    }),
                    itemCount: displayEvent.length);
              }
            })));
  }
}
