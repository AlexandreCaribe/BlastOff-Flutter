import 'dart:io';
void main() {
  print("Digite o seu nome completo");  
  final input = stdin.readLineSync()!;
  final upperCase = input.toUpperCase();
  final lowerCase = input.toLowerCase();
  final noSpaces = input.replaceAll(' ', '');
  final length = noSpaces.length;
  final parts = input.split(' ');
  final firstName = parts.first;
  
  print('Nome em letras maiúsculas: $upperCase');
  print('Nome em letras minúsculas: $lowerCase');
  print('Quantidade de letras: $length');
  print('Primeiro nome: $firstName');
}