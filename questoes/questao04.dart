// Questão 4 - Notas e faltas dos alunos (FLAG: matrícula = '00000')
import 'dart:io';

String ler(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!.trim();
}

void main() {
  int totalAlunos = 0, aprovados = 0, totalFem = 0;
  double somaMedias = 0, somaMediasFem = 0;
  String? matMaiorM, matMaiorF;
  double maiorMediaM = -1, maiorMediaF = -1;

  while (true) {
    final matricula = ler('\nMatrícula (00000 para sair): ');
    if (matricula == '00000') break;
    ler('Nome: ');
    final sexo = ler('Sexo (M/F): ').toUpperCase();
    final n1 = double.parse(ler('Nota 1: '));
    final n2 = double.parse(ler('Nota 2: '));
    final n3 = double.parse(ler('Nota 3: '));
    final faltas = int.parse(ler('Faltas: '));

    final media = (n1 + n2 + n3) / 3;
    final aprovado = media >= 7.0 && faltas <= 18;

    totalAlunos++;
    somaMedias += media;
    if (aprovado) aprovados++;

    if (sexo == 'F') {
      totalFem++;
      somaMediasFem += media;
      if (aprovado && media > maiorMediaF) {
        maiorMediaF = media;
        matMaiorF = matricula;
      }
    } else if (sexo == 'M') {
      if (aprovado && media > maiorMediaM) {
        maiorMediaM = media;
        matMaiorM = matricula;
      }
    }
  }

  if (totalAlunos == 0) {
    print('Nenhum aluno informado.');
    return;
  }

  print('\na) Média da turma: ${(somaMedias / totalAlunos).toStringAsFixed(2)}');
  print('b) Percentual de aprovados: ${(aprovados * 100 / totalAlunos).toStringAsFixed(2)}%');
  print('c) Maior média aprovada (M): ${matMaiorM ?? 'nenhum aluno aprovado'}');
  print('   Maior média aprovada (F): ${matMaiorF ?? 'nenhuma aluna aprovada'}');
  print('d) Média do sexo feminino: '
      '${totalFem > 0 ? (somaMediasFem / totalFem).toStringAsFixed(2) : 'nenhuma aluna'}');
}
