import 'dart:io';

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void mostrarDetalhes() {
    print("ID: $id");
    print("Nome: $name");
    print("Preço: ${price}");
  }
}

void main() {
  List<House> casas = [];
  for (int i = 1; i <= 3; i++) {
    print("Digite os dados da casa $i:");

    stdout.write("ID: ");
    int id = int.parse(stdin.readLineSync()!);

    stdout.write("Nome: ");
    String name = stdin.readLineSync()!;

    stdout.write("Preço: ");
    double price = double.parse(stdin.readLineSync()!);

    casas.add(House(id, name, price));
    print("");
  }

  for (var casa in casas) {
    casa..name = "${casa.name} (Cadastrada)";
  }

  print("\n Casas cadastradas:");
  for (var casa in casas) {
    casa.mostrarDetalhes();
  }
}
