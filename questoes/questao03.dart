// Questão 3 - S = 1 5 100 2 10 90 4 15 80 8 20 70 16 25 60 ...
// A série é formada por 3 sequências intercaladas:
//   1ª: 1, 2, 4, 8, 16, ...    (dobra)
//   2ª: 5, 10, 15, 20, ...     (soma 5)
//   3ª: 100, 90, 80, 70, ...   (subtrai 10)
import 'dart:io';

void main() {
  stdout.write('Número de termos: ');
  final n = int.parse(stdin.readLineSync()!.trim());

  int a = 1, b = 5, c = 100;
  final termos = <int>[];
  for (int i = 0; i < n; i++) {
    if (i % 3 == 0) {
      termos.add(a);
      a *= 2;
    } else if (i % 3 == 1) {
      termos.add(b);
      b += 5;
    } else {
      termos.add(c);
      c -= 10;
    }
  }
  print('S = ${termos.join(' ')}');
}
