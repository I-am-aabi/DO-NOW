import 'package:flutter/material.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/presentation/settings/widgets/privacy_policy.dart';
import 'package:project1/presentation/settings/widgets/settings_topbar.dart';
import 'package:project1/presentation/settings/widgets/terms_and_conditions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Column(
            children: const [
              SettingsTopBar(),
              SizedBox(height: 5,),
              Privacy(),
              TermsAndContitions()
            ]),
      ),
    );
  }
}
