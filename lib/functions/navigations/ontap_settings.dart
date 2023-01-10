import 'package:flutter/material.dart';
import 'package:project1/presentation/settings/settings_screen.dart';

import '../../presentation/Search&filter/search/search_screen.dart';

void tapSettings(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const SettingsScreen()));
}
