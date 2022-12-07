import 'package:flutter/material.dart';
import 'package:project1/pages/Search/search_screen.dart';

void tapSearch(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
}
