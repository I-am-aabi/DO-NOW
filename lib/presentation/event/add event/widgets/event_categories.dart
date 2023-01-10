// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project1/Database/functions/event/event_data_collector.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/providers/event_providers.dart';

// ignore: must_be_immutable
class CategoriesEvent extends StatelessWidget {
  CategoriesEvent({super.key, this.initial});
  var initial;

  @override
  Widget build(BuildContext context) {
    if (initial == null) {
      initial == 'select a category';
    }
    return Container(
      decoration: BoxDecoration(
          color: container,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: selection, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left:8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('category:'),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 150.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: Consumer(
                    builder: (context, ref, child) {
                      final eventCategory = ref.watch(eventCategoryProvider);
                      return DropdownButton(
                        dropdownColor: background,
                        // ignore: unnecessary_null_comparison
                        hint: eventCategory == ''
                            ? Text(initial)
                            : Text(
                                eventCategory,
                                style: TextStyle(color: textcolor),
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        style: TextStyle(color: textcolor),
                        items: ['work', 'family', 'cultural'].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          ref.read(eventCategoryProvider.notifier).state = val!;
                          eventelements[4] = val;
                          initial = val;
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
