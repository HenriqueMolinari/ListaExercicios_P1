/*
Autor: Henrique de Oliveira Molinari
Data: 25/09/2025
Função do Código: ler uma lista de sensores e alterar o valor de um sensor já
                  existente na lista (editando o print do for in).
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
  print('\nLISTA ATUAL:');

  for (var sensor in sensores) {
    print('Sensor: ${sensor['nome']} | Valor: ${sensor['valor']}${sensor['unidade']} | Status: *******');
  }
  print('\nATUALIZAR SENSORES:');
  stdout.write('Digite o nome do sensor p/ atualizar: ');
  String? nome = stdin.readLineSync()!;

  for (var sensor in sensores) {
    if (sensor['nome'] == nome) {
      stdout.write('Digite o novo valor: ');
      String? input = stdin.readLineSync();
      double novoValor = double.parse(input!);
      sensor['valor'] = novoValor;
    }
  }

  print('\nNOVA LISTA:');
  for (var sensor in sensores) {
    if (sensor['valor'] > 30) {
      print('Sensor: ${sensor['nome']} | Valor: ${sensor['valor']}${sensor['unidade']} | Status: ALERTA',
      );
    } else {
      print('Sensor: ${sensor['nome']} | Valor: ${sensor['valor']}${sensor['unidade']} | Status: OK');
    }
  }
}
