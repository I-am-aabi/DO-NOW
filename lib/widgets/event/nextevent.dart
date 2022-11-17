import 'package:flutter/material.dart';

class NextEvent extends StatelessWidget {
  const NextEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration:  BoxDecoration(
      color: Color.fromARGB(255, 0, 0, 0),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      border: Border.all(color: const Color.fromARGB(255, 54, 191, 121),width: 2)
     ),
      width: double.infinity,
      height: 180,
      // child: getNextEvent(),
      
    );
  }
}