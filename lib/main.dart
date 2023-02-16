import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';
import 'screen3.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Page1(),
      'second':(context) => Page2(),
      'third':(context) => Page3(),
    },
  ));
}