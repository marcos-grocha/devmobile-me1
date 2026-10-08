// Questão 17 - Soma de dois vetores usando funções/procedimentos
import 'dart:io';

List<double> lerVetor(String nome, int tam) {
  final v = <double>[];
  for (int i = 0; i < tam; i++) {
    stdout.write('$nome[${i + 1}]: ');
    v.add(double.parse(stdin.readLineSync()!.trim()));
  }
  return v;
}

List<double> somarVetores(List<double> a, List<double> b) {
  final c = <double>[];
  for (int i = 0; i < a.length; i++) {
    c.add(a[i] + b[i]);
  }
  return c;
}

double somarElementos(List<double> v) {
  double soma = 0;
  for (final x in v) {
    soma += x;
  }
  return soma;
}

void imprimirVetor(String nome, List<double> v) {
  print('$nome = $v');
}

void main() {
  stdout.write('Tamanho dos vetores: ');
  final tam = int.parse(stdin.readLineSync()!.trim());

  final a = lerVetor('A', tam);
  final b = lerVetor('B', tam);
  final c = somarVetores(a, b);

  print('');
  imprimirVetor('A', a);
  imprimirVetor('B', b);
  imprimirVetor('C', c);
  print('Soma dos elementos de C: ${somarElementos(c)}');
}
