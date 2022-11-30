import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/Filter/costum_radio_buton.dart';
import 'package:project1/widgets/Filter/filter_result.dart';
import 'package:project1/widgets/Search/search_field.dart';
import 'package:project1/widgets/event/add_event/event_field/event_categories.dart';
import 'package:project1/widgets/other/date_field.dart';

class EventFilterPage extends StatelessWidget {
  const EventFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (() {
                    
                  }), icon: Icon(Icons.arrow_back)),
                  SearchField()

                ],
              )
            
            ],
          ),
        ),
      ),
    );
  }
}
