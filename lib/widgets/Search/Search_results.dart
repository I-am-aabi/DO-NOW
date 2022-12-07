// ignore: file_names
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project1/Database/Models/task_model/task_data_model.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/task/task.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  final _searchController = TextEditingController();
  final List<TaskModel> taskBoxList =
      Hive.box<TaskModel>('task_DB').values.toList();
  late List<TaskModel> displayTask = List<TaskModel>.from(taskBoxList);
  void searchTaskList(String value) {
    setState(() {
      displayTask = taskBoxList
          .where((element) =>
              element.discription.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 40,
              child: Center(
                child: TextField(
                  controller: _searchController,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: textcolor,fontFamily: 'suii'),
                  onChanged: (value) {
                    searchTaskList(value);
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
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: background,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
              width: double.infinity,
              child: (displayTask.isNotEmpty)
                  ? ListView.separated(
                      itemBuilder: ((context, index) {
                        return Task(
                            discription: displayTask[index].discription,
                            date: displayTask[index].date,
                            time: displayTask[index].time,
                            category: displayTask[index].category,
                            id: displayTask[index].id);
                      }),
                      separatorBuilder: (context, index) => const Divider(height: 10),
                      itemCount: displayTask.length,
                    )
                  : const Center(child: Text('no data found')),
            ),
          ),
        ],
      ),
    );
  }
}
