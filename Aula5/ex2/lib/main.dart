import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "TAB: 3",
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "This"),
          BottomNavigationBarItem(icon: Icon(Icons.layers), label: "Is"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "A"),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Bottom"),
          BottomNavigationBarItem(icon: Icon(Icons.error, color: Colors.red), label: "Bar"),
        ],
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        backgroundColor: Colors.blue,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        spacing: 12,
        spaceBetweenChildren: 12,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.phone, color: Colors.blue),
            backgroundColor: Colors.white,
            label: 'Telefone',
            onTap: () => debugPrint('Telefone clicado'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.email, color: Colors.blue),
            backgroundColor: Colors.white,
            label: 'Mensagem',
            onTap: () => debugPrint('Mensagem clicada'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.photo, color: Colors.blue), backgroundColor: Colors.white,
            label: 'Galeria',
            onTap: () => debugPrint('Galeria clicada'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
