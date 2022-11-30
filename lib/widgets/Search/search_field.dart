import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: background),
        decoration: InputDecoration(
                hintText: 'search',
                hintStyle:
                    const TextStyle(color: Color.fromARGB(99, 49, 58, 50)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:  BorderSide(
                    color: selection,
                    width: 1.0,
                  ),
                ),
                suffixIcon: const Icon(Icons.search),
                suffixIconColor: selection,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide:  BorderSide(
                    color: selection,
                    width: 1.0,
                  ),
                ),
              ),
    );
  }
}
