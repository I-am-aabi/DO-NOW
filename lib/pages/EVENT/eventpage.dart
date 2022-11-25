import 'package:flutter/material.dart';
import 'package:project1/Database/functions/event/get_all_event.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/event/add_event/event_field/add_event_topbar.dart';
import 'package:project1/widgets/event/all_events.dart';
import 'package:project1/widgets/event/event_top_bar.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getAllEvent();
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
          child: Column(
            children: const [
              EventTopBar(),
              SizedBox(
                height: 30,
              ),
              Expanded(child: AllEvents()),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
