import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> utensilios = [
    'Conjunto de panelas', 'Panela de pressão', 'Frigideira antiaderente', 'Descanso de panelas', 
    'Faqueiro', 'Tábua de corte de carnes (madeira ou vidro)', 'Conjunto de medidores', 'Fouet', 
    'Saca rolhas', 'Abridor de latas e garrafas', 'Tesoura', 'Ralador', 'Funil', 'Leiteira', 
    'Coador de café', 'Chaleira', 'Escorredor de macarrão'
  ];

  TextEditingController _searchController = TextEditingController();

  List<String> utensiliosFiltrados = [];
  //método que é chamado quando o estado do widget é criado. Aqui, ele é usado para ordenar a lista de utensílios no início.
  @override
  void initState() {
    ordenarLista();
    super.initState();
    utensiliosFiltrados = utensilios;
  }

  void ordenarLista() {
    setState(() {
      utensiliosFiltrados.sort();
    });
  }

  /*método que filtra a lista de utensílios com base na consulta de pesquisa digitada pelo usuário. 
  Ele usa o método forEach para percorrer cada item da lista e verificar se ele contém a consulta. 
  Em seguida, ele adiciona os itens correspondentes a uma nova lista e atualiza o estado do widget 
  com a nova lista filtrada.
  */
  void filtrarLista(String query) {
    List<String> listaFiltrada = [];

    utensilios.forEach((utensilio) {
      if (utensilio.toLowerCase().contains(query.toLowerCase())) {
        listaFiltrada.add(utensilio);
      }
    });

    setState(() {
      utensiliosFiltrados = listaFiltrada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Utensílios de cozinha'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _searchController,
                onChanged: (value) {
                  filtrarLista(value);
                },
                decoration: InputDecoration(
                  labelText: 'Pesquisar',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: utensiliosFiltrados.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(utensiliosFiltrados[index]),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ordenarLista();
          },
          child: Icon(Icons.sort),
        ),
      ),
    );
  }
}
