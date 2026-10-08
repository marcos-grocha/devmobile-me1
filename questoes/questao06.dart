// Questão 6 - Adivinhar o número aleatório (1 a 100)
import 'dart:io';
import 'dart:math';

// Random(N): número aleatório entre 1 e N
int random(int n) => Random().nextInt(n) + 1;

void main() {
  final secreto = random(100);
  int inicio = 0, fim = 100;

  while (true) {
    stdout.write('Chute um número entre $inicio e $fim: ');
    final chute = int.tryParse(stdin.readLineSync()!.trim());

    if (chute == null || chute <= inicio || chute > fim) {
      print('Valor inválido! Digite um número dentro do intervalo.');
      continue;
    }
    if (chute == secreto) {
      print('Parabéns, você acertou! O número era $secreto.');
      break;
    }

    if (chute > secreto) {
      fim = chute;
    } else {
      inicio = chute;
    }
    print('O número está entre $inicio e $fim');
  }
}
