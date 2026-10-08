# Medida de Eficiência – Unidade I

**Universidade Tiradentes (UNIT)**  
**Disciplina:** Programação para Dispositivos Móveis  
**Professora:** Layse Santos Souza

## Alunos

- Marcos Araujo Goulart
- Bianca Raiane Souza
- Thaissa da Silva Araujo

## Como rodar

Cada questão está em um arquivo separado dentro da pasta `questoes`. Para rodar:

```
dart run questoes/questao01.dart
```

## Observações

- Questão 1: no enunciado os preços estão com vírgula (5,5), mas em Dart isso não compila, então usamos ponto (5.5).
- Questão 2: entendemos a série como (2i+1) elevado a (4i)!, dividido por 5i. Os sinais seguem o enunciado: os três primeiros termos são positivos e depois alterna. Os números crescem muito rápido, então a partir do segundo termo o resultado estoura e aparece Infinity ou NaN. A lógica está certa, só não tem tipo numérico que aguente.
- Questão 5: o enunciado não diz qual é o flag, então usamos o nome FIM para encerrar.
- Questão 6: o intervalo começa entre 0 e 100, igual ao exemplo, e chutes fora do intervalo atual não são aceitos.
- Questão 7: o fatorial do denominador vai e volta entre 1 e 4 (1, 2, 3, 4, 3, 2, 1, 2...).
- Questão 12: fizemos separando os dígitos com % 10, então os zeros são mantidos (1200 vira 0021).
- Questão 14: o programa obriga o usuário a digitar os vetores em ordem crescente, se digitar fora de ordem ele pede de novo.
