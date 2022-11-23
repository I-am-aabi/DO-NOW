import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project1/pages/Home/homepage.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/other/navigationbar.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {

    super.initState();
    Timer(
        const Duration(seconds: 1),
        (() => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) => const naviBar())))));
  }

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: background,
      body: const Center(
        child: Text(
          'DO NOW',
          style:
              TextStyle(color: Color.fromARGB(255, 54, 191, 121), fontSize: 45),
        ),
      ),
    );
  }
}
