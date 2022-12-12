import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/settings/privacy_policy.dart';
import 'package:project1/widgets/settings/settings_topbar.dart';
import 'package:project1/widgets/settings/terms_and_conditions.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Column(
            // ignore: prefer_const_constructors
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
