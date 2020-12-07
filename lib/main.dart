import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();

}

class _DicePageState extends State<DicePage> {
  var random = new Random();
  var leftDiceNumber=1;
  var rightDiceNumber=1;
  void changeState(){
    setState(() {
      leftDiceNumber=random.nextInt(5)+1;
      rightDiceNumber=random.nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  changeState();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  changeState();
                },
                child: Image.asset('images/dice$rightDiceNumber.png')
                ,),
            ),
          ),
        ],
      ),
    );
  }
}

