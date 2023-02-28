import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  Random random = Random();
  Color cor = Colors.purple;
  double tamanho = 50;

  void _mudarCorTamanho() {
    setState(() {
      // Gera uam cor aleatória
      cor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );

      // Gera um tamanho aleatório
      tamanho = random.nextDouble() * 200 + 70;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: _mudarCorTamanho,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: tamanho,
              height: tamanho,
              decoration: BoxDecoration(
                color: cor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
