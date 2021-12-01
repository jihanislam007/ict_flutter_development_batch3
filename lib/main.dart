import 'package:flutter/material.dart';

import 'Auth/splash.dart';
import 'PageOne.dart';
import 'Stacks.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: splash(),
    );
  }
}



