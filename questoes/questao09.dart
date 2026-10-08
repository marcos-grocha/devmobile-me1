// Questão 9 - Números de 4 dígitos tais que (2 primeiros + 2 últimos)^2 = número
// Ex.: 3025 -> 30 + 25 = 55 -> 55 * 55 = 3025
void main() {
  for (int n = 1000; n <= 9999; n++) {
    final soma = n ~/ 100 + n % 100;
    if (soma * soma == n) {
      print(n); // 2025, 3025, 9801
    }
  }
}
