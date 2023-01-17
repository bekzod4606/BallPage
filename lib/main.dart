import 'dart:math';
// ignore_for_file: unused_import, avoid_unnecessary_containers, avoid_print
import 'package:flutter/material.dart';

void main() {
  return runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Ask me anything'),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballPressedButton = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballPressedButton = Random().nextInt(5) + 1;
          });
          print('I got clicked');
        },
        child: Image.asset('images/ball$ballPressedButton.png'),
      ),
    );
  }
}
