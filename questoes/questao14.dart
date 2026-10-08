// Questão 14 - Intercalar dois vetores ordenados em um terceiro também ordenado
import 'dart:io';

int lerInt(String msg) {
  while (true) {
    stdout.write(msg);
    final v = int.tryParse(stdin.readLineSync()!.trim());
    if (v != null) return v;
    print('Valor inválido!');
  }
}

// Lê um vetor obrigando o usuário a digitá-lo em ordem crescente
List<int> lerVetorOrdenado(String nome) {
  int tam;
  do {
    tam = lerInt('Tamanho do vetor $nome: ');
  } while (tam <= 0);

  final v = <int>[];
  for (int i = 0; i < tam; i++) {
    while (true) {
      final x = lerInt('$nome[${i + 1}]: ');
      if (v.isEmpty || x >= v.last) {
        v.add(x);
        break;
      }
      print('O vetor deve ser ordenado! Digite um valor >= ${v.last}.');
    }
  }
  return v;
}

List<int> intercalar(List<int> a, List<int> b) {
  final c = <int>[];
  int i = 0, j = 0;
  while (i < a.length && j < b.length) {
    if (a[i] <= b[j]) {
      c.add(a[i++]);
    } else {
      c.add(b[j++]);
    }
  }
  while (i < a.length) {
    c.add(a[i++]);
  }
  while (j < b.length) {
    c.add(b[j++]);
  }
  return c;
}

void main() {
  final a = lerVetorOrdenado('A');
  final b = lerVetorOrdenado('B');
  final c = intercalar(a, b);
  print('\nA = $a');
  print('B = $b');
  print('C = $c');
}
