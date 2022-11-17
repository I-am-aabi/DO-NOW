import 'package:flutter/material.dart';

class AllEvents extends StatelessWidget {
  const AllEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          border: Border.all(
              color: const Color.fromARGB(255, 54, 191, 121), width: 2)),
      width: double.infinity,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const TextField(),
          const TextField(),
          const TextField(),
          const TextField(),

        ],
      ),
    );
  }
}
