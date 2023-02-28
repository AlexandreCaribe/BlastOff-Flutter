import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.purple,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
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
