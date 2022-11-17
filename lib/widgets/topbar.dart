import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
    
      children: [
         IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_circle_outline),
          iconSize: 32,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
        const Text(
          'DO NOW',
          style: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(255, 54, 191, 121),
          ),
        ),
          IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          iconSize: 33,
          color: const Color.fromARGB(255, 54, 191, 121),
        ),
       
      ],
    );
  }
}