// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  SafeArea(
            child: Scaffold(
              appBar:   AppBar(
                title: Text("HomePage"),
                
                actions: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.message)),
                  
                ],
                
               
                
              ),
              
                  body: Center
                  (child: Text("Welcome to linux brother", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  
                  ),
                  ),
                  
                    
                  
            ),
      ),
      
      
    );
  }
}