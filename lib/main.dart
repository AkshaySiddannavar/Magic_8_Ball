import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          appBar: AppBar(
            foregroundColor: Colors.blueGrey,
            title: const Text(
              'I am Magic Ball  : Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Center(
            child: Container(
              color: Colors.lightBlue,
              child: MagicBall(),
            ),
          ),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (() {
        setState(() {
          ballNumber = math.Random().nextInt(5) + 1;
        });
      }),
      child: Image.asset('images/ball$ballNumber.png'),
    );
  }
}
