// Questão 16 - Quatro vetores: união ordenada e interseção
import 'dart:io';

String ler(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!.trim();
}

List<int> lerVetor(int numero) {
  final tam = int.parse(ler('\nTamanho do vetor $numero: '));
  final v = <int>[];
  for (int i = 0; i < tam; i++) {
    v.add(int.parse(ler('V$numero[${i + 1}]: ')));
  }
  return v;
}

// Ordenação por inserção
List<int> ordenar(List<int> v) {
  final r = List<int>.from(v);
  for (int i = 1; i < r.length; i++) {
    final chave = r[i];
    int j = i - 1;
    while (j >= 0 && r[j] > chave) {
      r[j + 1] = r[j];
      j--;
    }
    r[j + 1] = chave;
  }
  return r;
}

void main() {
  final vetores = <List<int>>[];
  for (int i = 1; i <= 4; i++) {
    vetores.add(lerVetor(i));
  }

  // a) Quinto vetor com todos os valores, ordenado
  final todos = <int>[];
  for (final v in vetores) {
    todos.addAll(v);
  }
  final quinto = ordenar(todos);

  // b) Elementos presentes nos 4 vetores (sem repetição)
  final intersecao = <int>[];
  for (final x in vetores[0]) {
    final emTodos =
        vetores[1].contains(x) && vetores[2].contains(x) && vetores[3].contains(x);
    if (emTodos && !intersecao.contains(x)) {
      intersecao.add(x);
    }
  }

  print('\na) Vetor ordenado: $quinto');
  print('b) Interseção: ${intersecao.isEmpty ? 'vazia' : ordenar(intersecao)}');
}
