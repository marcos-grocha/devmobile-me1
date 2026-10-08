// Questão 8 - Vestibular UNIT (FLAG: código = '0000')
import 'dart:io';

String ler(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!.trim();
}

void main() {
  final candidatosCC = <String>[];
  int totalM = 0, totalF = 0;
  String? nomeMenorM, codMaiorSiM;
  int menorPontM = 5001, maiorPontSiM = -1;

  while (true) {
    final codigo = ler('\nCódigo (0000 para sair): ');
    if (codigo == '0000') break;
    final curso = ler('Curso (CC/SI): ').toUpperCase();
    final nome = ler('Nome: ');
    final sexo = ler('Sexo (M/F): ').toUpperCase();
    final pontuacao = int.parse(ler('Pontuação (0-5000): '));

    if (curso == 'CC' && pontuacao > 2500) {
      candidatosCC.add('$codigo - $nome - $pontuacao');
    }

    if (sexo == 'M') {
      totalM++;
      if (pontuacao < menorPontM) {
        menorPontM = pontuacao;
        nomeMenorM = nome;
      }
      if (curso == 'SI' && pontuacao > maiorPontSiM) {
        maiorPontSiM = pontuacao;
        codMaiorSiM = codigo;
      }
    } else if (sexo == 'F') {
      totalF++;
    }
  }

  print('\na) Candidatos de CC com mais de 2500 pontos:');
  if (candidatosCC.isEmpty) print('   nenhum');
  for (final c in candidatosCC) {
    print('   $c');
  }

  print('b) Candidato masculino com menor pontuação: ${nomeMenorM ?? 'nenhum'}');
  print('c) Código do candidato masculino com maior pontuação em SI: ${codMaiorSiM ?? 'nenhum'}');

  final total = totalM + totalF;
  if (total > 0) {
    print('d) Masculino: ${(totalM * 100 / total).toStringAsFixed(2)}%');
    print('   Feminino: ${(totalF * 100 / total).toStringAsFixed(2)}%');
  } else {
    print('d) Nenhum candidato inscrito.');
  }
}
