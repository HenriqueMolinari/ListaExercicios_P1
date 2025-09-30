import 'dart:io';

List<Map<String, dynamic>> produtos = [];

void main() {
  // Cadastro dos produtos
  for (int i = 0; i < 3; i++) {
    stdout.write('DIGITE O NOME DO PRODUTO ${i + 1}: ');
    String? nome = stdin.readLineSync()!;

    stdout.write('DIGITE O VALOR DO PRODUTO ${i + 1}: ');
    String? input = stdin.readLineSync();
    double preco = double.parse(input!);

    produtos.add({'nome': nome, 'preco': preco});
  }

  // Exibir todos os produtos
  print('\nLISTA DE PRODUTOS:');
  for (var produto in produtos) {
    print('${produto['nome']} - R\$ ${produto['preco']}');
  }

  // Buscar produto pelo nome
  buscarProduto();
}

void buscarProduto() {
  print('\nBUSCAR PRODUTO:');
  stdout.write('Nome do produto: ');
  String? nome = stdin.readLineSync();

  for (var produto in produtos) {
    if (produto['nome'] == nome) {
      print('\nENCONTRADO: ${produto['nome']} - R\$ ${produto['preco']}');
      return;
    }
  }

  print('\nNÃO ENCONTRADO!');
}
