import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key, required this.searchNotifier});

  final _searchController = TextEditingController();

  final ValueNotifier searchNotifier;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: TextField(
          controller: _searchController,
          textAlign: TextAlign.start,
          style: TextStyle(color: textcolor,fontFamily: 'suii'),
          onChanged: (value) {
            searchNotifier.value = value;
            searchNotifier.notifyListeners();
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 5, left: 12),
            hintText: 'search',
            hintStyle: const TextStyle(
                color: Color.fromARGB(99, 49, 58, 50), fontSize: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: selection,
                width: 1.0,
              ),
            ),
            suffixIcon: const Icon(Icons.search),
            suffixIconColor: selection,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                color: selection,
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
