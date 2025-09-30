/*
Autor: Henrique de Oliveira Molinari
Data: 25/09/2025
Função do Código: ler uma lista de sensores e printar "alerta" em sensores 
                  de valor > 30.
*/

// Lista com valores pré selecionados

import 'dart:io';

List<Map<String, dynamic>> sensores = [
  {'nome': 'Temperatura', 'valor': 22.0, 'unidade': '°C'},
  {'nome': 'Ultrassonico', 'valor': 35.0, 'unidade': 'cm'},
  {'nome': 'Temperatura2', 'valor': 30.0, 'unidade': '°C'},
  {'nome': 'Ultrassonico2', 'valor': 10.0, 'unidade': 'cm'},
];

void main() {
  for (var sensor in sensores) {
    if (sensor['valor'] > 30) {
      print(
        '${sensor['nome']} - ${sensor['valor']}${sensor['unidade']} - ALERTA!!!!',
      );
    } else {
      print('${sensor['nome']} - ${sensor['valor']}${sensor['unidade']} - OK');
    }
  }
}



//LISTA USANDO STDOUT E STDIN
/*
import 'dart:io';

List<Map<String, dynamic>> sensores = [];

void main() {
  print('CADASTRE OS SENSORES COM: Nome, valor e Unidade');
  for (int i = 0; i < 3; i++) {
    print('\nSENSOR N°${i + 1}:');

    stdout.write('Nome: ');
    String? nome = stdin.readLineSync()!;

    stdout.write('Valor: ');
    String? input = stdin.readLineSync();
    double valor = double.parse(input!);

    stdout.write('Unidade: ');
    String? unidade = stdin.readLineSync()!;

    sensores.add({'nome': nome, 'valor': valor, 'unidade': unidade});
  }

  for (var sensor in sensores) {
    if (sensor['valor'] > 30) {
      print('\nSensor: ${sensor['nome']} - Estado: ALERTA!!!!');
    } else {
      print('\nSensor: ${sensor['nome']} - Estado: OK');
    }
  }
}
*/