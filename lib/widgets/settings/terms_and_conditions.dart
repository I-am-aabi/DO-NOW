import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/utilities.dart';

class TermsAndContitions extends StatelessWidget {
  const TermsAndContitions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      leading: const Icon(Icons.info),
      title: Text('Terms and conditions',
      style: TextStyle(color: textcolor,
      fontFamily: 'suii',
      fontSize: 22),),
      onTap: () {
        
      },
    );
  }
}