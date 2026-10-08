// Questão 10 - Perfil de candidatos às vagas (FLAG: nome = FIM)
import 'dart:io';

String ler(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!.trim();
}

void main() {
  int qtdF = 0, qtdM = 0;
  int homensExp = 0, somaIdadeHomensExp = 0;
  int homensMais45 = 0;
  int mulheresMenos30Exp = 0;
  String? nomeMaisNovaExp;
  int menorIdadeFExp = 999;

  while (true) {
    final nome = ler('\nNome (FIM para sair): ');
    if (nome.toUpperCase() == 'FIM') break;
    final sexo = ler('Sexo (M/F): ').toUpperCase();
    final idade = int.parse(ler('Idade: '));
    final experiencia = ler('Tem experiência? (S/N): ').toUpperCase() == 'S';

    if (sexo == 'M') {
      qtdM++;
      if (experiencia) {
        homensExp++;
        somaIdadeHomensExp += idade;
      }
      if (idade > 45) homensMais45++;
    } else if (sexo == 'F') {
      qtdF++;
      if (experiencia) {
        if (idade < 30) mulheresMenos30Exp++;
        if (idade < menorIdadeFExp) {
          menorIdadeFExp = idade;
          nomeMaisNovaExp = nome;
        }
      }
    }
  }

  print('\na) Feminino: $qtdF | Masculino: $qtdM');
  print('b) Idade média dos homens com experiência: '
      '${homensExp > 0 ? (somaIdadeHomensExp / homensExp).toStringAsFixed(2) : 'nenhum'}');
  print('c) Homens com mais de 45 anos: '
      '${qtdM > 0 ? (homensMais45 * 100 / qtdM).toStringAsFixed(2) : '0.00'}%');
  print('d) Mulheres com menos de 30 anos e com experiência: $mulheresMenos30Exp');
  print('e) Candidata mais nova com experiência: ${nomeMaisNovaExp ?? 'nenhuma'}');
}
