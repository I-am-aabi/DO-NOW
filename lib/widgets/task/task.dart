import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Change cars oil',
            style: TextStyle(color: Color.fromARGB(255, 54, 191, 121),
            fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '31-12-2022',
                style: TextStyle(color: Color.fromARGB(255, 54, 191, 121),
                fontSize: 16),
              ),
              IconButton(
                onPressed: (() {}),
                icon: const Icon(Icons.visibility),
                color: Color.fromARGB(255, 78, 190, 86),
              ),
              const Text(
                '10:30 AM',
                style: TextStyle(color: Color.fromARGB(255, 54, 191, 121),
                fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
