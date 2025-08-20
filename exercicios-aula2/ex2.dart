void cadastrarFuncionario({required String nome, String? cargo}) {
  if (cargo != null) {
    print("Bem-vindo $nome! Seu cargo é $cargo.");
  } else {
    print("Bem-vindo $nome!");
  }
}

void main() {
  cadastrarFuncionario(nome: "Gabriela", cargo: "Desenvolvedora");
  cadastrarFuncionario(nome: "João");
}