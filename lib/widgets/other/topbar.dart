import 'package:flutter/material.dart';
import 'package:project1/functions/navigations/ontap_search.dart';
import 'package:project1/utilities.dart';

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
          icon: const Icon(Icons.person),
          iconSize: 32,
          color: topbar,
        ),
         Text(
          'DO NOW',
          style: TextStyle(
            fontSize: 32,
            color: selection,
          ),
        ),
        IconButton(
          onPressed: () {
            tapSearch(context);
          },
          icon: const Icon(Icons.search),
          iconSize: 33,
          color: topbar,
        ),
      ],
    );
  }
}
