import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask a Question"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  String _text = "";
  var _answers = ["Yes!", "No!", "Ask Again\nLater", "Decidedly\nSo"];
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        var answer = Random().nextInt(4);
        setState(() {
          _text = _answers[answer];
        });
      },
      child: Stack(
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('images/magic8ball.jpg'),
            ),
          ),
          Center(
            child: Text(
              _text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.purple.shade400),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
