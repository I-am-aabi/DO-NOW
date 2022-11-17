import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key, required this.name1, required this.name2});
  final String name1;
  final String name2;
  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return CustomRadioButton(
      elevation: 0,
      absoluteZeroSpacing: false,
      unSelectedColor: Color.fromARGB(255, 9, 20, 9),
      buttonLables:  [
       widget.name1,
        widget.name2,
      ],
      buttonValues: const [
        "STUDENT",
        "PARENT",
      ],
      buttonTextStyle: const ButtonTextStyle(
          selectedColor: Color.fromARGB(255, 15, 32, 19),
          unSelectedColor: Color.fromARGB(255, 52, 158, 63),
          textStyle: TextStyle(
            fontSize: 16,
          )),
      radioButtonValue: (value) {
        print(value);
      },
      selectedColor: Color.fromARGB(255, 110, 190, 114),
      enableShape: true,
      padding: 10.0,
      spacing: 5.0,
    );
  }
}
