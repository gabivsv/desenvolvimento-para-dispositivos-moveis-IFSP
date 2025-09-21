import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ConstraintExample(),
    );
  }
}

class ConstraintExample extends StatelessWidget {
  const ConstraintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Exemplo de Constraints")),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 200,
          height: 200,
          child: Container(
            color: Colors.red,
            width: 400, 
            height: 400,
          ),
        ),
      ),
    );
  }
}
