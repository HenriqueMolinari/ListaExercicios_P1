import 'dart:io';

List<double> notas = [];
double nota = 0.0;
double soma = 0.0;

void main() {
  print('DIGITE QUATRO NOTAS');
  for (int i = 0; i < 4; i++) {
    stdout.write('Nota ${i + 1}: ');
    String? input = stdin.readLineSync();
    double nota = double.parse(input!);
    notas.add(nota);
  }
  //soma das notas

  for (double nota in notas) {
    soma += nota;
  }

  //media das notas
  double media = soma / notas.length;

  print('MEDIA DAS NOTAS: ${media}');

  if (media >= 6) {
    print('Aluno Aprovado');
  } else {
    print('Aluno Reprovado');
  }
}
