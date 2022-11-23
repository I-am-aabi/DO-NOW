import 'package:flutter/material.dart';
import 'package:project1/utilities.dart';

class NextTask extends StatelessWidget {
  const NextTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration:  BoxDecoration(
        color: container,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        // border: Border.all(color: containerboder,width: 0.5)
       ),
        width: double.infinity,
        height: 410,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text('TODAY',
                style: TextStyle(
                  color: textcolor,
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
              children:  [
                Text('Task 1',
                   style: TextStyle(
                  color: textcolor,
                  fontSize: 20
                ),),
                Text('9:00 AM',
                   style: TextStyle(
                  color:textcolor,
                  fontSize: 20
                ),),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 63, 153, 189),
              thickness: 1,
            ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('Task 1',
                   style: TextStyle(
                  color:textcolor,
                  fontSize: 20
                ),),
                Text('9:00 AM',
                   style: TextStyle(
                  color:textcolor,
                  fontSize: 20
                ),),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 63, 153, 189),
              thickness: 1,
            ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Text('Task 1',
                   style: TextStyle(
                  color:textcolor,
                  fontSize: 20
                ),),
                Text('9:00 AM',
                   style: TextStyle(
                  color:textcolor,
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