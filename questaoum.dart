import 'dart:io';

void main() {
  int num;
  
  // Lê o número de entrada
  do {
    print("Digite um número entre 0 e 9999:");
    num = int.parse(stdin.readLineSync()!);
  } while (num < 0 || num > 9999);
  
  // Separa cada dígito e exibe na tela
  int unidade = num % 10;
  int dezena = (num ~/ 10) % 10;
  int centena = (num ~/ 100) % 10;
  int unidadeMilhar = (num ~/ 1000) % 10;
  
  print("Unidade: $unidade");
  print("Dezena: $dezena");
  print("Centena: $centena");
  print("Unidade de milhar: $unidadeMilhar");
}