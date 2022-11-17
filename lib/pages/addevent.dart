import 'package:flutter/material.dart';
import 'package:project1/widgets/event/add_event/add_event_topbar.dart';
import 'package:project1/widgets/event/add_event/event_field/event_field.dart';


class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding:  const EdgeInsets.only(left: 30,right: 30,top: 20),
          child: Column(
            children: const [
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