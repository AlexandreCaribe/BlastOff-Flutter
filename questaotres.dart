import 'dart:io';

void main() {
  double temperatura, resultado;
  String opcao;

  // Lê a temperatura e a opção de entrada
  print("Digite a temperatura:");
  temperatura = double.parse(stdin.readLineSync()!);
  
  print("Digite a opção de temperatura: (C para Celsius, F para Fahrenheit)");
  opcao = stdin.readLineSync()!;
  
  // Converte a temperatura para a outra unidade e exibe o resultado
  if (opcao == "C") {
    resultado = (temperatura * 9 / 5) + 32;
    print("Temperatura em Fahrenheit: $resultado ºF");
  } else if (opcao == "F") {
    resultado = ((temperatura * 5) - 160) / 9;
    print("Temperatura em Celsius: $resultado ºC");
  } else {
    print("Opção inválida!");
  }
}