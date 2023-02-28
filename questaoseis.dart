import 'dart:io';

void main() {
  double a, b, c;

  // Lê o comprimento das três retas
  print("Digite o comprimento das três retas:");
  a = double.parse(stdin.readLineSync()!);
  b = double.parse(stdin.readLineSync()!);
  c = double.parse(stdin.readLineSync()!);

  // Verifica se as três retas podem formar um triângulo
  if (a < b + c && b < a + c && c < a + b) {
    print("As retas de comprimento $a, $b e $c podem formar um triângulo.");
  } else {
    print("As retas de comprimento $a, $b e $c não podem formar um triângulo.");
  }
}
