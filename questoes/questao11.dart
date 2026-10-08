// Questão 11 - Folha de pagamento dos professores (FLAG: código = 9999)
import 'dart:io';

const valorHora = 12.30;

String ler(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!.trim();
}

String reais(double v) => 'R\$ ${v.toStringAsFixed(2)}';

void main() {
  final listagem = <String>[];
  int qtdM = 0, qtdF = 0;
  double somaLiqM = 0, somaLiqF = 0;

  while (true) {
    final codigo = ler('\nCódigo (9999 para sair): ');
    if (codigo == '9999') break;
    final nome = ler('Nome: ');
    final sexo = ler('Sexo (M/F): ').toUpperCase();
    final horas = double.parse(ler('Horas de aula no mês: '));

    final bruto = horas * valorHora;
    final desconto = sexo == 'M' ? 0.10 : 0.05;
    final liquido = bruto * (1 - desconto);

    listagem.add('$codigo | $nome | ${reais(bruto)} | ${reais(liquido)}');

    if (sexo == 'M') {
      qtdM++;
      somaLiqM += liquido;
    } else {
      qtdF++;
      somaLiqF += liquido;
    }
  }

  print('\nCódigo | Nome | Salário bruto | Salário líquido');
  for (final linha in listagem) {
    print(linha);
  }

  print('\nMédia salário líquido (M): ${qtdM > 0 ? reais(somaLiqM / qtdM) : 'nenhum professor'}');
  print('Média salário líquido (F): ${qtdF > 0 ? reais(somaLiqF / qtdF) : 'nenhuma professora'}');
}
