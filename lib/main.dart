import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Dicee',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 36, 19, 18),
        ),
        body: Dicee(),
      ),
    ),
  );
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int leftDiceButton = 1;
  int rightDiceButton = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blueAccent,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      leftDiceButton = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceButton.png')),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      rightDiceButton = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceButton.png')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

