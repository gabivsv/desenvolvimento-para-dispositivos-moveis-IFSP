import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interface Exemplo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Hello World!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), 
              Text(
                'Clique no botão.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30), 
              TextButton(
                onPressed: () {
                  print('Botão clicado!');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                ),
                child: Text('Continuar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
