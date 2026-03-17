import 'package:flutter/material.dart';

//Run|Debug|Profile
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World, segue o líder',
            style: TextStyle(fontSize: 30, color: Color.fromRGBO(255,100,89,1.0)),
          ),
        ),
      ),
    );
  }
}