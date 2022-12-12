import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/utilities.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      
      leading: const Icon(Icons.privacy_tip),
      title: Text('Privacy Policy',
      style: TextStyle(
        color: textcolor,
        fontFamily: 'suii',
        fontSize: 22
      ),
      ),
      onTap: () {
        
      },
    );
  }
}