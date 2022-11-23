// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:project1/pages/EVENT/eventpage.dart';
import 'package:project1/pages/Home/homepage.dart';
import 'package:project1/pages/TASKS/taskpage.dart';
import 'package:project1/utilities.dart';

class naviBar extends StatefulWidget {
  const naviBar({super.key});

  @override
  State<naviBar> createState() => _naviBarState();
}

List pagelist = [const TaskScreen(), const HomePage(), const EventScreen()];
int _selectedIndex = 1;

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
            MoltenTab(icon: const Icon(Icons.home)),
            MoltenTab(icon: const Icon(Icons.event))
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
      // bottomNavigationBar: BottomNavigationBar(

      //   backgroundColor: background,
      //   unselectedItemColor: Color.fromARGB(255, 73, 86, 95),

      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.task),label: 'task'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.event),label: 'event')
      //   ],
      //   currentIndex: _selectedIndex, //New
      //   onTap: _onItemTapped,

      // ),
      body: pagelist.elementAt(_selectedIndex),
    );
  }
}
