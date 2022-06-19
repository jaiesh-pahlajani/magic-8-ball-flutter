import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => BallState();
}

class BallState extends State<Ball> {
  @override
  int number = Random().nextInt(5) + 1;
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: FlatButton(
        child: Image(image: AssetImage("images/ball$number.png")),
        onPressed: () {
          setState(() {
            number = Random().nextInt(5) + 1;
          });
        },
      )),
    );
  }
}
