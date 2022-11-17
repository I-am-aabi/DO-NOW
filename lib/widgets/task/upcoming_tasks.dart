import 'package:flutter/cupertino.dart';

class NextTask extends StatelessWidget {
  const NextTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration:  BoxDecoration(
        color: Color.fromARGB(255, 0, 0, 0),
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(color: const Color.fromARGB(255, 54, 191, 121),width: 2)
       ),
        width: double.infinity,
        height: 410,
       child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('TODAY',
              style: TextStyle(
                color: const Color.fromARGB(255, 54, 191, 121),
                fontSize: 20
              ),)
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),

        ],
       ),
      ),
    );
  }
}