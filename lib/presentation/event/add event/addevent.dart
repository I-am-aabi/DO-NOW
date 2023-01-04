import 'package:flutter/material.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/event/add%20event/widgets/add_event_topbar.dart';
import 'package:project1/presentation/event/add%20event/widgets/event_field.dart';

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