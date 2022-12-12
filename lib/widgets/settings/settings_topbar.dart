import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';

class SettingsTopBar extends StatelessWidget {
  const SettingsTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 25,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              padding: const EdgeInsets.all(0),
              icon: const Icon(Icons.navigate_before),
              iconSize: 22,
              color: selection,
            ),
          ),
          Text(
            'settings',
            style: TextStyle(color: selection, fontFamily: 'suii', fontSize: 27),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
