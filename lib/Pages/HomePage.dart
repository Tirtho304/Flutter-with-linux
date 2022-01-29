import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Padding(
        padding: EdgeInsets.all(1.5),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "image/t2.jpg",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter  UseeerName",
                      label: Text("UsserName"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      label: Text("Password"),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    )));
  }
}
