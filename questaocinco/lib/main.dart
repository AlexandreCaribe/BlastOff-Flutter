import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: DefaultTextStyle(
            style: TextStyle(
              fontSize: 36,
              color: Colors.black,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: (MediaQuery.of(context).size.width - 300) / 2, // ajuste a posição
                  top: 250,
                  child: Text(
                    "Woolha",
                    style: TextStyle(
                      color: Color.fromARGB(255, 25, 112, 184),
                    ),
                  ),
                ),
                Positioned(
                  left: (MediaQuery.of(context).size.width - 40) / 2, // ajuste a posição
                  top: 250,
                  child: Text(
                    "dot",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  left: (MediaQuery.of(context).size.width +80) / 2, // ajuste a posição
                  top: 250,
                  child: Text(
                    "com",
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
