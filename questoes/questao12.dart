// Questão 12 - Imprimir um número de trás para frente (ex.: 6042 -> 2406)
import 'dart:io';

void main() {
  stdout.write('Número: ');
  int n = int.parse(stdin.readLineSync()!.trim());

  final negativo = n < 0;
  if (negativo) n = -n;

  // Extrai os dígitos com % 10 e ~/ 10 (mantém zeros, ex.: 1200 -> 0021)
  final buffer = StringBuffer(negativo ? '-' : '');
  do {
    buffer.write(n % 10);
    n ~/= 10;
  } while (n > 0);

  print('Impressão: $buffer');
}
