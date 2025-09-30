import 'dart:io';

List<Map<String, dynamic>> produtos = [];

void main() {
  for (int i = 0; i < 3; i++) {
    stdout.write('DIGITE O NOME DO PRODUTO ${i + 1}: ');
    String? nome = stdin.readLineSync()!;

    stdout.write('DIGITE O VALOR DO PRODUTO ${i + 1}: ');
    String? input = stdin.readLineSync();
    double preco = double.parse(input!);

    produtos.add({'nome': nome, 'preco': preco});
  }

  for (var produto in produtos) {
    print('${produto['nome']} - R\$ ${produto['preco']}');
  }
}
