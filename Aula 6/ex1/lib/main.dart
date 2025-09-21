import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ImageGridPage(),
    );
  }
}

class ImageGridPage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1Sng4sj9HY8IoXY5PcVeU1WNcyLscLcmyFw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQti3st-Z93_d0E7oIZ_nZeZuVo-EkaQgpBRg&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE5sOQbxqqd2w3ClOuF0qPFPR-Dr6ToXDezw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbKwxcXqQnQYeKK-ulDz7OieaoOneQSylNkQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7I7Lhqkt3KrmOHkkLIMBth4whvlLDH3iBvQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEM1WhPC7PD44vheAoIRCkR7mncn0N7dGfJg&s',
  ];

  final List<String> imageTitles = [
    'Montanha',
    'Campo',
    'Floresta',
    'Cidade',
    'Deserto',
    'Praia',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView de Imagens'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              footer: Container(
                color: Colors.black54, 
                padding: EdgeInsets.all(4),
                child: Text(
                  imageTitles[index],
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
