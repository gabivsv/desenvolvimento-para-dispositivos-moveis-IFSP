class Laptop {
  int id;
  String nome;
  int ram;
  double clockCpu;
  
  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  void mostrarDetalhes() {
    print("ID: $id");
    print("Nome: $nome");
    print("RAM: $ram");
    print("ClockCPU: $clockCpu");
  }
}

void main() {
  Laptop laptop1 = Laptop(1, "Dell Inspiron", 16, 2.6);
  Laptop laptop2 = Laptop(2, "Lenovo ThinkPad", 8, 2.4);
  Laptop laptop3 = Laptop(3, "MacBook Pro", 32, 3.2);

  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}


