import 'package:flutter/material.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/Database/functions/event/add_event.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/event/event.dart';

class AllEvents extends StatelessWidget {
  const AllEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      width: double.infinity,
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ValueListenableBuilder(
              valueListenable: eventListNotifier,
              builder: ((BuildContext ctx, List<eventModel> evenList,
                  Widget? child) {
                return ListView.separated(
                    itemBuilder: ((ctx1, index) {
                      final data = evenList[index];
                      return Event(
                        discription: data.discription,
                        date: data.date,
                        time: data.time,
                        path: data.path,
                        index: index,
                      );
                    }),
                    separatorBuilder: ((ctx1, index) {
                      return const Divider();
                    }),
                    itemCount: evenList.length);
              }))),
    );
  }
}
