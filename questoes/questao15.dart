// Questão 15 - Pesquisa de bois por intervalo de peso
import 'dart:io';

String ler(String msg) {
  stdout.write(msg);
  return stdin.readLineSync()!.trim();
}

void main() {
  final n = int.parse(ler('Quantidade de bois: '));
  final numeros = <int>[];
  final pesos = <double>[];

  for (int i = 0; i < n; i++) {
    print('\nBoi ${i + 1}');
    numeros.add(int.parse(ler('Número: ')));
    pesos.add(double.parse(ler('Peso (kg): ')));
  }

  String continuar;
  do {
    print('\n--- Pesquisa ---');
    var minimo = double.parse(ler('Peso mínimo: '));
    var maximo = double.parse(ler('Peso máximo: '));
    if (minimo > maximo) {
      final aux = minimo;
      minimo = maximo;
      maximo = aux;
    }

    int encontrados = 0;
    for (int i = 0; i < n; i++) {
      if (pesos[i] >= minimo && pesos[i] <= maximo) {
        print('Boi nº ${numeros[i]} - ${pesos[i]} kg');
        encontrados++;
      }
    }
    if (encontrados == 0) print('Nenhum boi nesse intervalo.');

    continuar = ler('\nNova pesquisa? (S/N): ').toUpperCase();
  } while (continuar == 'S');
}
