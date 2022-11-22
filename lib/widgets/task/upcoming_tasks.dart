import 'package:flutter/material.dart';

class NextTask extends StatelessWidget {
  const NextTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration:  BoxDecoration(
        color: const Color.fromARGB(255, 0, 0, 0),
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        border: Border.all(color: const Color.fromARGB(255, 54, 191, 121),width: 2)
       ),
        width: double.infinity,
        height: 410,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('TODAY',
                style: TextStyle(
                  color: Color.fromARGB(255, 54, 191, 121),
                  fontSize: 20
                ),)
              ],
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Task 1',
                   style: TextStyle(
                  color: Color.fromARGB(255, 54, 191, 121),
                  fontSize: 20
                ),),
                Text('9:00 AM',
                   style: TextStyle(
                  color: Color.fromARGB(255, 54, 191, 121),
                  fontSize: 20
                ),),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 55, 109, 33),
              thickness: 1,
            ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Task 1',
                   style: TextStyle(
                  color: Color.fromARGB(255, 54, 191, 121),
                  fontSize: 20
                ),),
                Text('9:00 AM',
                   style: TextStyle(
                  color: Color.fromARGB(255, 54, 191, 121),
                  fontSize: 20
                ),),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 61, 121, 38),
              thickness: 1,
            ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Task 1',
                   style: TextStyle(
                  color: Color.fromARGB(255, 54, 191, 121),
                  fontSize: 20
                ),),
                Text('9:00 AM',
                   style: TextStyle(
                  color: Color.fromARGB(255, 54, 191, 121),
                  fontSize: 20
                ),),
              ],
            ),
            // const Divider(
            //   color: Color.fromARGB(255, 63, 121, 40),
            //  thickness: 1,
            // )

          ],
         ),
       ),
      ),
    );
  }
}