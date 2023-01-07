import 'dart:io';

import 'package:flutter/material.dart';

Image chooseImage(flag, path) {
  if (flag == false) {
    print('asset return');
    return Image.asset('assets/images/dummy.jpg');
  } else {
    print('file return');
    return Image.file(File(path));
  }
}
