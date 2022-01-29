// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/Pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
