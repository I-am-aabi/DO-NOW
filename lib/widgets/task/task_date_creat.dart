import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/Database/functions/task/task_data_collector.dart';
import 'package:project1/functions/others/get_date_info.dart';
import 'package:project1/utilities.dart';

class TaskDateCreater extends StatefulWidget {
  TaskDateCreater({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<TaskDateCreater> createState() => _TaskDateCreaterState();
}

class _TaskDateCreaterState extends State<TaskDateCreater> {
  late Future<String> _value;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = dateInfo(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    // getDate(widget.id);
    return FutureBuilder(
      builder: ((context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              Visibility(
                visible: snapshot.hasData,
                child: Text(
                  snapshot.data!,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 183, 43, 43), fontSize: 15),
                ),
              )
            ],
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              Visibility(
                visible: snapshot.hasData,
                child: Text(
                  snapshot.data!,
                  style: const TextStyle(color: Colors.black, fontSize: 24),
                ),
              )
            ],
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return const Text('Error');
          } else if (snapshot.hasData) {
            if (snapshot.data == '') {
              return Container(
                width: 3,
                color: selection,
              );
            }
            return Text(
              snapshot.data!,
              style: const TextStyle(color: Colors.cyan, fontSize: 12),
            );
          } else {
            return const Text('Empty data');
          }
        } else {
          return Text('State: ${snapshot.connectionState}');
        }
      }),
      future: _value,
      initialData: 'none',
    );
    //   if (date == '') {
    //     return Container(
    //       width: 3,
    //       color: selection,
    //     );
    //   } else {
    //     return Container(
    //       height: 40,
    //       width: 40,
    //       color: container,
    //       child: Center(
    //         child: Text(
    //           date,
    //           style: TextStyle(color: textcolor, fontSize: 25),
    //         ),
    //       ),
    //     );
    //   }
    // }

    // dateAssigner(date) {
    //   this.date = date;
    // }
  }
}
