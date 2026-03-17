import 'package:flutter/material.dart';

//Run|Debug|Profile
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exemplo Container'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'container 1',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(width: 80, height: 80, color: Colors.red,
                  child: Center(
                    child: Text(
                      'container 2',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
                  SizedBox(width: 20,
                  height: 20
                  ),
                  Container(width: 80, height: 80, color: Colors.green,
                  child: Center(
                    child: Text(
                      'container 3',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
                  SizedBox(width: 0,
                  height: 0
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}