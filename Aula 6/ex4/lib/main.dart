import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layouts',
      theme: ThemeData(
        brightness: Brightness.dark, 
        scaffoldBackgroundColor: Colors.black, 
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      home: ResponsiveLayoutPage(),
    );
  }
}

class ResponsiveLayoutPage extends StatelessWidget {
  final List<String> languages = ["Dart", "JavaScript", "PHP", "C++"];

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Layouts"),
        centerTitle: true,
      ),
      body: isPortrait ? _buildPortraitLayout(context) : _buildLandscapeLayout(context),
    );
  }
  Widget _buildPortraitLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Cheetah Coding",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 26),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("BUTTON 1")),
            SizedBox(width: 12),
            ElevatedButton(onPressed: () {}, child: Text("BUTTON 2")),
          ],
        ),
        SizedBox(height: 24),
        ...languages.map(
          (lang) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 20),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: Text(lang),
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildLandscapeLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Cheetah Coding",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 26),
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: Text("BUTTON 1")),
              SizedBox(height: 8),
              ElevatedButton(onPressed: () {}, child: Text("BUTTON 2")),
            ],
          ),
        ),
        VerticalDivider(color: Colors.white, width: 1),
        Expanded(
          flex: 1,
          child: ListView(
            children: languages
                .map(
                  (lang) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 20),
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: Text(lang),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
