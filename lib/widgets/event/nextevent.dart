import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';

class NextEvent extends StatelessWidget {
  const NextEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration:  BoxDecoration(
      color: container,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      // border: Border.all(color: containerboder,width: 0.5)
     ),
      width: double.infinity,
      height: 180,
      // child: getNextEvent(),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset('assets/images/festival.jpg'),
      ),
    );
  }
}