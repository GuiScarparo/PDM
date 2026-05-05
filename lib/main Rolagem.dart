import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Scroll Example")),
        body: SingleChildScrollView(
          child: Column(
          children: List.generate(20,
          (index) => Container(
              margin: EdgeInsets.all(10),
              height: 80,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Item ${index + 1}",
                  style: const TextStyle(color: Colors.white)
                ),
              ),
            ),
          ), 
        ),
      ),
      ),
    );
  }
}