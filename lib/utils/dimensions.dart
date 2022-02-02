import 'package:flutter/material.dart';

class Utils {
  static double height = 0;
  static double width = 0;

  Utils() {
    Size size = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size;
    height = size.height;
    width = size.width;
  }

  static double vw(int percent) {
    return (width / 100) * percent;
  }

  static double vh(int percent) {
    return (height / 100) * percent;
  }
}
