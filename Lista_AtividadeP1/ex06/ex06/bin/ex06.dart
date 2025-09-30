import 'dart:io';

List<Map<String, dynamic>> alunos = [];

void main() {
  print('\nLISTA DE ALUNOS:');
  for (int i = 0; i < 4; i++) {
    // nome do aluno
    stdout.write('Digite o nome do aluno ${i + 1}: ');
    String? nome = stdin.readLineSync()!;

    // nota do aluno
    stdout.write('Digita a nota do aluno ${i + 1}: ');
    String? input = stdin.readLineSync();
    double nota = double.parse(input!);

    alunos.add({'nome': nome, 'nota': nota});
  }

  int quantidadeAprovado = 0;

  print('\nALUNOS APROVADOS:');
  for (var aluno in alunos) {
    if (aluno['nota'] >= 6) {
      quantidadeAprovado++;
      print('${aluno['nome']} - Nota ${aluno['nota']}');
    }
  }

  print('\nTotal de aprovados: $quantidadeAprovado');
}
