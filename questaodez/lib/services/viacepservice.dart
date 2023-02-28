import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/resultCep.dart';

/*Aqui tem a fetchCep que é uma função assincrona que utiliza a biblioteca http do pacote http
 para fazer uma requisição GET na API ViaCEP com base no CEP fornecido como parâmetro. Se a 
 requisição for bem-sucedida (com código de status 200), a função retorna uma instância da classe 
 ResultadoCep, que é convertida a partir do JSON retornado pela API. Caso contrário, uma exceção
 é lançada com a mensagem "Requisição inválida!".
*/
class ViaCepService {
  static Future<ResultadoCep> fetchCep({String? cep}) async {
    final response = await http.get(Uri.parse('https://viacep.com.br/ws/$cep/json/'));
    if (response.statusCode == 200) {
      return ResultadoCep.fromJson(json.decode(response.body));
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}