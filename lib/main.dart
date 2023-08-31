import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice=1;
  int rightDice=2;
  void diceSet (){
     leftDice=Random().nextInt(6)+1;
     rightDice=Random().nextInt(6)+1;

  }
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home:Scaffold(
        appBar: AppBar( title: Text('Dice '),
          centerTitle: true,
          backgroundColor: Colors.red,
        ) ,
        body: Center(
          child: Row(
            children: [
              Expanded(child: TextButton(
                child: Image.asset('images/dice$leftDice.png'
                ),
                onPressed: (){
                  setState(() {
                   diceSet();
                  });
                },
              ),
              ),
              Expanded(child: TextButton(
                child: Image.asset('images/dice$rightDice.png'
                ),
                onPressed: (){
                  setState(() {
                    diceSet();
                  });
                },
              ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.red,
      ) ,

    );
  }
}

