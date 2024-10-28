import 'package:dio_exam/views/MyHomePage.dart';
import 'package:flutter/material.dart';

import 'di/service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
