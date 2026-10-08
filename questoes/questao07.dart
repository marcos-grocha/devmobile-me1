// Questão 7 - S = X^2/1! + X^3/2! + X^4/3! + X^5/4! + X^6/3! + X^7/2! + X^8/1! + X^9/2! ...
// O expoente começa em 2 e cresce de 1 em 1.
// O fatorial do denominador "vai e volta" entre 1 e 4: 1, 2, 3, 4, 3, 2, 1, 2, 3, 4, ...
import 'dart:io';
import 'dart:math';

int fatorial(int n) {
  int f = 1;
  for (int i = 2; i <= n; i++) {
    f *= i;
  }
  return f;
}

void main() {
  stdout.write('Valor de X: ');
  final x = double.parse(stdin.readLineSync()!.trim());
  stdout.write('Número de termos: ');
  final n = int.parse(stdin.readLineSync()!.trim());

  double s = 0;
  int expoente = 2, d = 1, passo = 1;
  for (int i = 0; i < n; i++) {
    s += pow(x, expoente) / fatorial(d);
    expoente++;
    if (d == 4) passo = -1;
    if (d == 1) passo = 1;
    d += passo;
  }
  print('S = $s');
}
