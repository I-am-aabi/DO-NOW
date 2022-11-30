import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/Search/Search_results.dart';
import 'package:project1/widgets/Search/search_field.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: background,
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (() {
                    
                  }), icon: const Icon(Icons.arrow_back),
                  color: selection,),
                  SizedBox(width: 30,),
                  Expanded(child: SearchField())

                ],
              )
            
            ],
          ),
            )));
  }
}
