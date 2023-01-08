import 'dart:io';

import 'package:flutter/material.dart';

Image chooseImage(flag, path) {
  if (flag == false) {
    return Image.asset('assets/images/dummy.jpg');
  } else {
    return Image.file(File(path));
  }
}
