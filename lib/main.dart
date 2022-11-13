import 'package:flutter/material.dart';
import 'package:project_630710056/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '630710056_Project',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const homePage()
    );
  }
}