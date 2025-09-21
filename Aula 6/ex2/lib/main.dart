import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercício ThemeData',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exemplo ThemeData"),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue, 
            child: Center(
              child: Text(
                "Widget",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
