import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          _text = "No!";
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
            ),
          ),
        ],
      ),
    );
  }
}
