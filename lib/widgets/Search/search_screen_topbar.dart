import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/Filter/filter_dropdown.dart';
import 'package:project1/widgets/Search/search_field.dart';

class Searchtopbar extends StatelessWidget {
  const Searchtopbar({super.key, required this.searchNotifier});

  final ValueNotifier searchNotifier;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
            icon: const Icon(Icons.arrow_back),
            color: selection,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(child: SearchField(searchNotifier: searchNotifier,)
              ),
         Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: IconButton(
                onPressed: (() async {
                  showFilter(context,searchNotifier);
                }),
                icon: Icon(
                  Icons.filter_alt_outlined,
                  color: selection,
                )),
          )
        ],
      ),
    );
  }
}
