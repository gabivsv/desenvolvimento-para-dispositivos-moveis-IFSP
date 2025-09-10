import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TarefasPage(),
    );
  }
}

class TarefasPage extends StatefulWidget {
  const TarefasPage({super.key});

  @override
  State<TarefasPage> createState() => _TarefasPageState();
}

class _TarefasPageState extends State<TarefasPage> {
  final List<Map<String, dynamic>> tarefas = [];

  @override
  void initState() {
    super.initState();
  
    for (int i = 0; i < 5; i++) {
      tarefas.add({
        "titulo": "Task ${DateTime.now()}",
        "concluida": false,
      });
    }
  }

  void _mostrarDialogo() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Aviso"),
        content: const Text("Você está no App de Notas de Tarefas"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tarefasNaoConcluidas =
        tarefas.where((tarefa) => tarefa["concluida"] == false).length;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Tarefas"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                final concluidas =
                    tarefas.where((tarefa) => tarefa["concluida"] == true);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content:
                          Text("Você tem ${concluidas.length} tarefas concluídas")),
                );
              },
              child: const Text("View Completed Tasks"),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              "You have $tarefasNaoConcluidas uncompleted tasks",
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
        
          Expanded(
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.yellow[700],
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(tarefas[index]["titulo"]),
                    trailing: Checkbox(
                      value: tarefas[index]["concluida"],
                      onChanged: (value) {
                        setState(() {
                          tarefas[index]["concluida"] = value ?? false;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarDialogo,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
