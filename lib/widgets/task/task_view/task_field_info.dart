import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FieldInfo extends StatelessWidget {
  const FieldInfo({super.key, this.heading, this.tailing});
  final heading;
  final tailing;
  @override
  Widget build(BuildContext context) {
    return Row(
  
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
               Text(
                '$heading:',
                style: const TextStyle(
                    color: Color.fromARGB(255, 54, 191, 121), fontSize: 20),
              ),
               Text(
                tailing,
                style: const TextStyle(
                    color: Color.fromARGB(255, 54, 191, 121), fontSize: 20),
              )
            ],
      
    );
  }
}
