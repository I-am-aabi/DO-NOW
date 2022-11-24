import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';

Image chooseImage(flag, path) {
  if (flag == false) {
    return Image.asset(path);
  } else {
    return Image.file(File(path));
  }
}
