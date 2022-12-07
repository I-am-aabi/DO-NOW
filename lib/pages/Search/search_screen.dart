import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/Search/Search_results.dart';
import 'package:project1/widgets/Search/search_screen_topbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: background,
        body: Column(
          children:  const [
            Searchtopbar(),
            Expanded(child: SearchResult()),
          ],
        ),
      ),
    );
  }
  
}