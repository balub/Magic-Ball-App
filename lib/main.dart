import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MagicBall(),
    );
  }
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int image = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Magic Pool App'),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child: FlatButton(
            onPressed: () {
              setState(() {
                image = Random().nextInt(4) + 1;
              });
            },
            child: Image.asset('images/ball$image.png'),
          ),
        ),
      ),
    );
  }
}
