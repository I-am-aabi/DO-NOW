import 'package:flutter/material.dart';
import 'package:project1/widgets/Filter/costum_radio_buton.dart';
import 'package:project1/widgets/Filter/filter_result.dart';
import 'package:project1/widgets/task/add_task/categories_task.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'FILTER',
                    style: TextStyle(
                        color: Color.fromARGB(255, 116, 204, 119),
                        fontSize: 30),
                  ),
                  IconButton(
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      icon: const Icon(Icons.navigate_before),
                      color:  const Color.fromARGB(255, 116, 204, 119),)
                ],
              ),
              const MyButton(
                name1: 'previus',
                name2: 'upcoming',
              ),
              const SizedBox(
                height: 10,
              ),
              const MyButton(name1: 'completed', name2: 'pending'),
              const SizedBox(
                height: 10,
              ),
               CategoriesTask(intial: 'Catogory'),
              const SizedBox(
                height: 10,
              ),
              //  DateField(),
              const SizedBox(
                height: 10,
              ),
              const Expanded(child: FilterResult())
            ],
          ),
        ),
      ),
    );
  }
}
