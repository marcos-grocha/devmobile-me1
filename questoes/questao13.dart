// Questão 13 - Elementos de um conjunto e quantas vezes cada um se repete
import 'dart:io';

void main() {
  stdout.write('Valor de N: ');
  final n = int.parse(stdin.readLineSync()!.trim());

  final vetor = <int>[];
  for (int i = 0; i < n; i++) {
    stdout.write('Elemento ${i + 1}: ');
    vetor.add(int.parse(stdin.readLineSync()!.trim()));
  }

  // Vetores paralelos: valores distintos (na ordem em que aparecem) e suas contagens
  final valores = <int>[];
  final contagens = <int>[];
  for (final x in vetor) {
    final pos = valores.indexOf(x);
    if (pos == -1) {
      valores.add(x);
      contagens.add(1);
    } else {
      contagens[pos]++;
    }
  }

  print('\nVetor lido: ${vetor.join(' ')}');
  print('Resultado');
  for (int i = 0; i < valores.length; i++) {
    print('${valores[i]} – ${contagens[i]}');
  }
}
