import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/presentation/widgets/utilities.dart';
import 'package:project1/providers/common_providers.dart';

// ignore: must_be_immutable
class CategoriesStatus extends StatelessWidget {
  CategoriesStatus({super.key, required this.initail});
  // ignore: prefer_typing_uninitialized_variables
  var initail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: container,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: selection, width: 1)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Text(
              'Status:',
              style: TextStyle(fontFamily: 'suii', color: textcolor),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 140.0, right: 8),
                child: DropdownButtonHideUnderline(
                  child: Consumer(
                    builder: (context, ref, child) {
                      final status = ref.watch(statusProvider);
                      return DropdownButton(
                        dropdownColor: background,
                        hint: status == ''
                            ? Text(initail)
                            : Text(
                                status,
                                style: TextStyle(color: textcolor),
                              ),
                        isExpanded: true,
                        iconSize: 30.0,
                        style: TextStyle(
                            color: textcolor, fontFamily: 'suii', fontSize: 17),
                        items: ['upcoming', 'completed', 'pending'].map(
                          (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          ref.read(statusProvider.notifier).state = val!;
                          elements[6] = val;
                          initail = val;
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
