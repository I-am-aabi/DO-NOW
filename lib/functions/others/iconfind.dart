import 'package:flutter/material.dart';

IconData findIcon(String icondata) {
  if (icondata == 'work') {
    return (Icons.work_outline);
  } else if (icondata == 'Personal') {
    return (Icons.person_outline);
  } else if (icondata == 'shopping') {
    return (Icons.money_outlined);
  } else {
    return (Icons.circle_outlined);
  }
}
