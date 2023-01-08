import 'package:flutter/material.dart';
import 'package:project1/presentation/Search&filter/search/search_screen.dart';

void tapSearch(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const SearchScreen()));
}
