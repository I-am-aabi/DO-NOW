// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:project1/utilities.dart';

class FieldInfo extends StatelessWidget {
  const FieldInfo({super.key, this.heading, this.tailing});
  final heading;
  final tailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
  
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                 Text(
                  '$heading:',
                  style:  TextStyle(
                      color: textcolor, fontSize: 20,fontFamily: 'suii'),
                ),
                 Text(
                  tailing,
                  style:  TextStyle(
                      color: textcolor, fontSize: 20,fontFamily: 'suii'),
                )
              ],
        
      ),
    );
  }
}
