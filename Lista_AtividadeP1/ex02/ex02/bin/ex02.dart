import 'dart:io';

List<int> numeros = [];
int numero = 0;
int quantidadeImpares = 0;

void main() {
  print('DIGITE 6 NUMEROS INTEIROS:');
  for (int i = 0; i < 6; i++) {
    stdout.write('Digite o numero ${i + 1}: ');
    String? input = stdin.readLineSync();
    int numero = int.parse(input!);
    numeros.add(numero);
  }
  print('LISTA DOS NUMEROS PARES:');
  for (numero in numeros) {
    if (numero % 2 == 0) {
      print(numero);
    } else {
      quantidadeImpares++;
    }
  }
  print('QUANTIDADE DE NUMEROS IMPARES:');
  print(quantidadeImpares);
}
