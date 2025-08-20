class Laptop {
  int id;
  String nome;
  int ram;
  double clockCpu;
  
  Laptop(this.id, this.nome, this.ram, this.clockCpu);

  Laptop.navegacao(this.id)
      : nome = "Laptop Navegação",
        ram = 4,
        clockCpu = 1.8;

  Laptop.escritorio(this.id)
      : nome = "Laptop Escritório",
        ram = 8,
        clockCpu = 2.4;

  Laptop.programacao(this.id)
      : nome = "Laptop Programação",
        ram = 16,
        clockCpu = 3.0;

  void mostrarDetalhes() {
    print("ID: $id");
    print("Nome: $nome");
    print("RAM: $ram");
    print("ClockCPU: $clockCpu");
  }
}

void main() {
  Laptop laptop1 = Laptop.navegacao(1);
  Laptop laptop2 = Laptop.escritorio(2);
  Laptop laptop3 = Laptop.programacao(3);

  laptop1.mostrarDetalhes();
  laptop2.mostrarDetalhes();
  laptop3.mostrarDetalhes();
}


