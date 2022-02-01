import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "Cart Place",
                  style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
                ),
              ),
              body: Center(
                child: Text(
                  "Login",
                ),
              ))),
    );
  }
}
