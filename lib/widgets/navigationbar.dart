import 'package:flutter/material.dart';
import 'package:project1/pages/eventpage.dart';
import 'package:project1/pages/homepage.dart';
import 'package:project1/pages/taskpage.dart';

class naviBar extends StatefulWidget {
  const naviBar({super.key});

  @override
  State<naviBar> createState() => _naviBarState();
}
List pagelist=[
  TaskScreen(),
  HomePage(),
  EventScreen()
];
int _selectedIndex = 1; 
class _naviBarState extends State<naviBar> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      bottomNavigationBar: Container(
    
    // width: 250,
    // height: 50,
    // decoration: const BoxDecoration(
    //   color: Colors.black,
    //   border: Border(
    //       top: BorderSide(color: Color.fromARGB(255, 54, 191, 121), width: 2, style: BorderStyle.solid),
    //       left: BorderSide(color: Color.fromARGB(255, 54, 191, 121), width: 2, style: BorderStyle.solid),
    //       right: BorderSide(color: Color.fromARGB(255, 54, 191, 121), width: 2, style: BorderStyle.solid),
    //       bottom: BorderSide(color: Color.fromARGB(255, 54, 191, 121), width: 2, style: BorderStyle.solid),
    //   ),
    //     borderRadius: BorderRadius.all(Radius.circular(25)),
               
    // ),
        child: BottomNavigationBar(
          
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Color.fromARGB(255, 52, 102, 87),
          
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.task),label: 'task'),
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.event),label: 'event')
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        
        ),
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