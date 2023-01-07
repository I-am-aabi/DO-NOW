// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:project1/presentation/event/eventpage.dart';
import 'package:project1/presentation/Task/taskpage.dart';
import 'package:project1/presentation/widgets/utilities.dart';

class naviBar extends StatefulWidget {
  const naviBar({super.key});

  @override
  State<naviBar> createState() => _naviBarState();
}

List pagelist = [const TaskScreen(),  const EventScreen()];
int _selectedIndex = 0;

class _naviBarState extends State<naviBar> {
  @override
  Widget build(BuildContext context) {
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
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      body: pagelist.elementAt(_selectedIndex),
    );
  }
}
