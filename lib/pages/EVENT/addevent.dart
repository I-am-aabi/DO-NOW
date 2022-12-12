import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/event/add_event/event_field/add_event_topbar.dart';
import 'package:project1/widgets/event/add_event/event_field/event_field.dart';

class AddEvent extends StatelessWidget {
  const AddEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Padding(
          padding:  const EdgeInsets.only(left: 30,right: 30,top: 20),
          child: Column(
            children:  const [
              AddEventTopbar(),
              SizedBox(
                height: 30,
              ),
              Expanded(child: EventField()),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}