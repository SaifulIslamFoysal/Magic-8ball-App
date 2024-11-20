import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Center(
          child: Text('Ask Me Anything ',
          style: TextStyle(
              color: Colors.white,
            fontSize: 30.0
          ),),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: const magicBall(),
    ),
  ),
);

class magicBall extends StatefulWidget {
  const magicBall({super.key});

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int answerNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: TextButton(
            onPressed: (){
              setState(() {
                answerNumber = Random().nextInt(5) +1 ;
              });
            },
            child: Image
              (image: AssetImage('images/ball$answerNumber.png'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
