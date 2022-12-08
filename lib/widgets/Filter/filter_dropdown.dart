import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/Filter/filter_topbar.dart';
import 'package:project1/widgets/Filter/my_filter_chip.dart';

Future<void> showFilter(BuildContext context,ValueNotifier notifier) {
  return showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return Container(
          decoration: BoxDecoration(color: background),
          height: 400,
          child: Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10,top: 20),
            child: ListView(
              children: [
               FilterTopBar(search: notifier),
               const Divider(),
              const SizedBox(height: 5,),
              const Center(
                child: Text('status',style: TextStyle(
                  fontFamily: 'suii',
                  fontSize: 25
                ),),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children:  [
                   MyFilterChip(label: 'completed',index: 3,notifier: notifier),
                   MyFilterChip(label: 'upcoming', index: 4,notifier: notifier),
                   MyFilterChip(label: 'pending', index: 5,notifier: notifier),
                 ],
               ),
                    const Divider(),
              const Center(
                child: Text('task categories',style: TextStyle(
                  fontFamily: 'suii',
                  fontSize: 25
                ),),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   MyFilterChip(label: 'work',index: 0 ,notifier: notifier, ),
                   MyFilterChip(label: 'personal', index: 1,notifier: notifier),
                   MyFilterChip(label: 'shopping', index:2,notifier: notifier),
                 ],
               ),
                    const Divider(),
              const Center(
                child: Text('event categories',style: TextStyle(
                  fontFamily: 'suii',
                  fontSize: 25
                ),),
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                 children:  [
                   MyFilterChip(label: 'family', index: 6,notifier: notifier),
                   MyFilterChip(label: 'cultural', index: 7,notifier: notifier),
                   MyFilterChip(label: 'work',index: 8,notifier: notifier),
                 ],
               )
              ],
            ),
          ),
        );
      });
}
