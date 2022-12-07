import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';
import 'package:project1/widgets/Search/search_field.dart';

class Searchtopbar extends StatefulWidget {
  const Searchtopbar({super.key});

  @override
  State<Searchtopbar> createState() => _SearchtopbarState();
}

class _SearchtopbarState extends State<Searchtopbar> {
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
               Expanded(child: Center(child: Text('search',style: TextStyle(
                color: selection, fontFamily: 'suii',fontSize: 27
              ),))),
              //  Expanded(child: SearchField()),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: IconButton(
                    onPressed: (() {}),
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
