// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/providers/task_providers.dart';

class CategoriesTask extends StatelessWidget {
  CategoriesTask({super.key, required this.intial});
  var intial;

  String _dropDownValue = '';

  @override
  Widget build(BuildContext context) {
    _dropDownValue = intial;
    return Container(
      decoration: BoxDecoration(
          color: container,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: selection, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('category:'),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 130.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: Consumer(
                    builder: (context, ref, child) {
                      final taskCategory = ref.watch(taskCategoryprovider);
                      return DropdownButton(
                        dropdownColor: background,
                        // ignore: unnecessary_null_comparison
                        hint: taskCategory == null
                            ? const Text('category')
                            : Text(
                                taskCategory,
                                style: TextStyle(color: textcolor),
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        style: TextStyle(
                            color: selection, fontFamily: 'suii', fontSize: 15),
                        items: ['work', 'personal', 'shopping'].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          ref.read(taskCategoryprovider.notifier).state = val!;
                          elements[4] = val;
                          intial = val;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
