// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:project1/pages/EVENT/eventpage.dart';
import 'package:project1/pages/Home/homepage.dart';
import 'package:project1/pages/TASKS/taskpage.dart';

class naviBar extends StatefulWidget {
  const naviBar({super.key});

  @override
  State<naviBar> createState() => _naviBarState();
}
List pagelist=[
  const TaskScreen(),
  const HomePage(),
  const EventScreen()
];
int _selectedIndex = 1; 
class _naviBarState extends State<naviBar> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 52, 102, 87),
        
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.task),label: 'task'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.event),label: 'event')
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      
      ),
      body: pagelist.elementAt(_selectedIndex),
    );
  }

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}
}