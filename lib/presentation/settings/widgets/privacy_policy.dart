import 'package:flutter/material.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/settings/widgets/privacy_policy_dialogue.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.privacy_tip),
      title: Text(
        'Privacy Policy',
        style: TextStyle(color: textcolor, fontFamily: 'suii', fontSize: 22),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PrivacyDialogue(),
            ));
      },
    );
  }
}
