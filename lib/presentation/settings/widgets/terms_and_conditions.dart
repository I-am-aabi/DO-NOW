import 'package:flutter/material.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/settings/widgets/terms_and_condition_dialogue.dart';

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
           Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TermsDialogue(),
            ));
      },
    );
  }
}