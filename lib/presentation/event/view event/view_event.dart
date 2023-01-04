// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:project1/Database/Models/event_model/event_data_model.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/event/view%20event/widgets/view_event_info.dart';
import 'package:project1/presentation/event/view%20event/widgets/view_event_topbar.dart';

class ViewEvent extends StatelessWidget {
  const ViewEvent({super.key, required this.Event, required this.index});
  final eventModel? Event;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            children:  [
              ViewEventTopbar(index: index),
              const SizedBox(
                height: 30,
              ),
              Expanded(child: ViewEventInfo(Event: Event,)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
