import 'dart:convert';

/* Este código define a classe ResultadoCep, que é utilizada pelo serviço ViaCepService 
para representar os dados retornados pela API do ViaCEP em formato JSON.
Utilizei como base um exemplo do site https://app.quicktype.io/
*/
class ResultadoCep {
    ResultadoCep({
        this.cep = '',
        this.logradouro = '',
        this.complemento = '',
        this.bairro = '',
        this.localidade = '',
        this.uf = '',
        this.ibge = '',
        this.gia = '',
        this.ddd = '',
        this.siafi = '',
    });

    String cep;
    String logradouro;
    String complemento;
    String bairro;
    String localidade;
    String uf;
    String ibge;
    String gia;
    String ddd;
    String siafi;

    factory ResultadoCep.fromRawJson(String str) => ResultadoCep.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory ResultadoCep.fromJson(Map<String, dynamic> json) => ResultadoCep(
        cep: json["cep"],
        logradouro: json["logradouro"],
        complemento: json["complemento"],
        bairro: json["bairro"],
        localidade: json["localidade"],
        uf: json["uf"],
        ibge: json["ibge"],
        gia: json["gia"],
        ddd: json["ddd"],
        siafi: json["siafi"],
    );

    Map<String, dynamic> toJson() => {
        "cep": cep,
        "logradouro": logradouro,
        "complemento": complemento,
        "bairro": bairro,
        "localidade": localidade,
        "uf": uf,
        "ibge": ibge,
        "gia": gia,
        "ddd": ddd,
        "siafi": siafi,
    };
}
