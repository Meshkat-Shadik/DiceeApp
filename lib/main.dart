import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.purple[900],
      appBar: AppBar(
        title: Center(child: Text("Dicee")),
        backgroundColor: Colors.purple[900],
        elevation: 0,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width - 28,
              child: OutlineButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                onPressed: () {
                    setState(() {
                      leftDiceNumber = 1 + Random().nextInt(7 - 1);
                      rightDiceNumber = 1 + Random().nextInt(7 - 1);
                    });
                },
                borderSide: BorderSide(color: Colors.white),
                highlightedBorderColor: Colors.purple[900],
                highlightColor: Colors.white,
                child: Text(
                  'Turn the dice',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
