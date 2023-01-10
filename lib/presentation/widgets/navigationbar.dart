// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:project1/presentation/event/eventpage.dart';
import 'package:project1/presentation/Task/taskpage.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/providers/common_providers.dart';

class naviBar extends StatelessWidget {
  const naviBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
       final page = ref.watch(pageProvider);
        return Scaffold(
          backgroundColor: background,
          bottomNavigationBar: MoltenBottomNavigationBar(
              barColor: container,
              borderColor: background,
              domeCircleColor: selection,
              tabs: [
                MoltenTab(icon: const Icon(Icons.task)),
                MoltenTab(icon: const Icon(Icons.event))
              ],
              selectedIndex: page,
              onTabChange: (index) {
                ref.read(pageProvider.notifier).state = index;
              }),
          body: pagelist.elementAt(page),
        );
      },
    );
  }
}

List pagelist = [const TaskScreen(), const EventScreen()];
