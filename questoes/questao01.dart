// Questão 1 - Total de um pedido de bolos
const boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};

double calcularTotal(List<String> ordem) {
  double total = 0;
  for (final bolo in ordem) {
    final preco = boloPrecos[bolo];
    if (preco == null) {
      print('$bolo não está no cardápio');
    } else {
      total += preco;
    }
  }
  return total;
}

void main() {
  const ordem = ['ovos', 'chocolate'];
  print('Total = ${calcularTotal(ordem)}'); // Total = 13.0

  const ordem2 = ['cenoura', 'limão'];
  print('Total = ${calcularTotal(ordem2)}'); // limão não está no cardápio / Total = 6.5
}
