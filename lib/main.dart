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
      appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text('Ask Me Anything')),
      body: Container(
        color: Colors.blue,
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNum;

  @override
  void initState() {
    super.initState();
    ballNum = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$ballNum.png'),
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
          });
        }
      ),
    );
  }
}
