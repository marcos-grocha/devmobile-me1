// Questão 2 - S = 3^4!/5 + 5^8!/10 + 7^12!/15 - 9^16!/20 + 11^20!/25 - 13^24!/30 + 15^28!/35 ...
// Termo i (i = 1, 2, 3, ...):
//   base     = 2i + 1   (3, 5, 7, 9, ...)
//   expoente = (4i)!    (4!, 8!, 12!, ...)
//   divisor  = 5i       (5, 10, 15, ...)
//   sinal    = os 3 primeiros positivos; a partir do 4º alterna (-, +, -, +, ...)
// Obs.: os valores crescem absurdamente rápido (5^8! já estoura o double),
// então a partir do 2º termo o resultado vira Infinity — o que importa é a lógica.
import 'dart:io';
import 'dart:math';

double fatorial(int n) {
  double f = 1;
  for (int i = 2; i <= n; i++) {
    f *= i;
  }
  return f;
}

void main() {
  stdout.write('Número de termos: ');
  final n = int.parse(stdin.readLineSync()!.trim());

  double s = 0;
  for (int i = 1; i <= n; i++) {
    final base = 2 * i + 1;
    final expoente = fatorial(4 * i);
    final divisor = 5 * i;
    final sinal = (i >= 4 && i % 2 == 0) ? -1 : 1;
    s += sinal * pow(base, expoente) / divisor;
  }
  print('S = $s');
}
