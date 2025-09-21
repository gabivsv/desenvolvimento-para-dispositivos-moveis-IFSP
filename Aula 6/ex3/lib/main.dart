import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo ThemeData',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[300], 
        primaryColor: Colors.lightBlue, 
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ThemeData e Subtema"),
        ),
        body: Center( 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center, 
            children: [
              Container(
                width: 100,
                height: 100,
                color: Theme.of(context).primaryColor,
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

              Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: Colors.amber, 
                  scaffoldBackgroundColor: Colors.grey[400],
                ),
                child: Container(
                  padding: EdgeInsets.all(16),
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Theme.of(context).primaryColor,
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
            ],
          ),
        ),
      ),
    );
  }
}
