/* 
Autor: Henrique de O. Molinari
Turma:  B
Docente: Marcelo Ciacco
Exercício: 01
*/

import 'dart:io';

void main() {
  List<String> nomes = [];

  print('CADASTRO - DIGITE 5 NOMES');
  print(' ');

  for (int i = 0; i < 5; i++) {
    stdout.write('Nome ${i + 1}:');
    String nome = stdin.readLineSync()!;
    nomes.add(nome);
  }

  print('NOMES CADASTRADOS:');
  for (String nome in nomes) {
    print(nome);
  }
}
