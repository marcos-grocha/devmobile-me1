// Questão 5 - Recém-nascidos (FLAG: nome = FIM)
import 'dart:io';

String ler(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!.trim();
}

String classificar(double peso) {
  if (peso <= 2) return 'Baixo Peso';
  if (peso <= 4) return 'Normal';
  return 'Alto Peso';
}

void main() {
  int total = 0, baixo = 0, normal = 0, alto = 0;
  String? nomeMaisPesada;
  double maiorPesoF = -1;

  while (true) {
    final nome = ler('\nNome (FIM para sair): ');
    if (nome.toUpperCase() == 'FIM') break;
    final sexo = ler('Sexo (M/F): ').toUpperCase();
    final peso = double.parse(ler('Peso (kg): '));

    final classificacao = classificar(peso);
    print('a) $nome - $sexo - $classificacao');

    total++;
    if (classificacao == 'Baixo Peso') {
      baixo++;
    } else if (classificacao == 'Normal') {
      normal++;
    } else {
      alto++;
    }

    if (sexo == 'F' && peso > maiorPesoF) {
      maiorPesoF = peso;
      nomeMaisPesada = nome;
    }
  }

  if (total == 0) {
    print('Nenhum recém-nascido informado.');
    return;
  }

  String pct(int qtd) => (qtd * 100 / total).toStringAsFixed(2);

  print('\nb) Recém-nascida com maior peso: ${nomeMaisPesada ?? 'nenhuma'}');
  print('c) Baixo Peso: ${pct(baixo)}%');
  print('   Normal: ${pct(normal)}%');
  print('   Alto Peso: ${pct(alto)}%');
}
