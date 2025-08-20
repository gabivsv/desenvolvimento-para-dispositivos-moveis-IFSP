import 'dart:ffi';

var equipamento = 'Impressora3D';
String local = 'Lab de protótipos';
dynamic patrimonio = 12345;

void main() {
  print(patrimonio);
  patrimonio = '12345-A';
  print(patrimonio);

  print(equipamento is String);
  print(local is String);
  print(patrimonio is Int);
}

//A variável 'patrimonio' foi declarada como dynamic, por isso o Dart permite que o valor dela mude de int para String. Já a variável 'local' foi declarada explicitamente como String. Isso significa que só pode receber valores do tipo String.