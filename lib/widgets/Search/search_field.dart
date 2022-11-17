import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Color.fromARGB(255, 54, 191, 121)),
        decoration: InputDecoration(
                hintText: 'Search',
                hintStyle:
                    const TextStyle(color: Color.fromARGB(100, 123, 220, 126)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 73, 198, 133),
                    width: 1.0,
                  ),
                ),
                suffixIcon: const Icon(Icons.search),
                suffixIconColor: Colors.green,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 67, 173, 70),
                    width: 1.0,
                  ),
                ),
              ),
    );
  }
}
