import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math';

import 'constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Guess the number',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _randomNumber = Random().nextInt(6);
  final _controller = TextEditingController();

  void _checkGuess(BuildContext context) {
    final guess = int.tryParse(_controller.text) ?? -1;
    if (guess == _randomNumber) {
      setState(() {
        _randomNumber = Random().nextInt(6);
        _controller.clear();
      });
      Fluttertoast.showToast(
          msg: "Parabéns, você acertou!",
          backgroundColor: Colors.green,
          textColor: Colors.white);
    } else if(guess < 0 || guess > 5) {
        Fluttertoast.showToast(
          msg: "Você colocou um número inválido!",
          backgroundColor: Colors.purple,
          textColor: Colors.white);
    }else{
      
      Fluttertoast.showToast(
          msg: "Que pena, tente novamente! O número era: $_randomNumber, a probabilidade de acerto é de 16,7%",
          backgroundColor: Colors.red,
          textColor: Colors.white);
      setState(() {
        _randomNumber = Random().nextInt(6);
        _controller.clear();
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3383CD),
                      Color(0xFF11249F),
                    ] 
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/sky.png"),
                  )
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tente adivinhar um número entre 0 e 5',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 150,
              child: TextField(
                cursorWidth: 5,
                controller: _controller,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Digite um número',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _checkGuess(context),
              child: Text('Adivinhar'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

