import 'dart:io';

List<int> numeros = [];

void main() {
  print('\nDIGITE 6 NUMEROS: ');

  for (int i = 0; i < 6; i++) {
    stdout.write('Digite o numero ${i + 1}: ');
    String? input = stdin.readLineSync();
    int numero = int.parse(input!);

    numeros.add(numero);
  }

  int menorNumero = numeros[0];
  int maiorNumero = numeros[0];

  for (var numero in numeros) {
    if (numero < menorNumero) {
      menorNumero = numero;
    }
    if (numero > maiorNumero) {
      maiorNumero = numero;
    }
  }

  print('\nMAIOR NUMERO: $maiorNumero');
  print('MENOR NUMERO: $menorNumero');
}
