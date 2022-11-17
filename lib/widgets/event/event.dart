import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Christmas',
            style: TextStyle(
              color: Color.fromARGB(255, 54, 191, 121),
              fontSize: 20
            ),),
            Text('Party hall',
            style: TextStyle(
              color: Color.fromARGB(255, 54, 191, 121),
              fontSize: 20
            ),)
          ],
          
        ),
        Image.asset('assets/images/festival.jpg'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            const Text('25-12-2022',
            style: TextStyle(
              color: Color.fromARGB(255, 54, 191, 121),
              fontSize: 20
            ),),
            IconButton(onPressed: () {
              
            }, icon: const Icon(Icons.visibility),
            color: const Color.fromARGB(255, 54, 191, 121),),
            const Text('8:00 PM',
            style: TextStyle(
              color: Color.fromARGB(255, 54, 191, 121),
              fontSize: 20
            ),)
          ],
        )
      ],
    );
  }
}