import 'package:flutter/material.dart';

import 'features/class/presentation/pages/first_class_page.dart';
import 'features/class/presentation/pages/second_class_page.dart';
import 'features/demo/presentation/pages/first_page.dart';
import 'features/demo/presentation/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/pages/first',
      //initialRoute: '/class/first',
      routes: {
        '/pages/first': (_) => FirstPage(),
        '/pages/second': (_) => SecondPage(),
        '/class/first': (_) => FirstClassPage(),
        '/class/second': (_) => SecondClassPage()
      },
      home: FirstPage(),
    );
  }
}