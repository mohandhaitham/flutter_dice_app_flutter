import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
            child: Text('Dicee',
            style: TextStyle(
                color: Colors.white,

            ),
                    ),
          ),
          elevation: 12.0, // Increase elevation for a more pronounced shadow
          shadowColor: Colors.black.withOpacity(0.7), // Darker and more opaque shadow color
           // Shadow colo
          backgroundColor: Colors.red[900],
        ),
        body: const DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =1;
  int rightDiceNumber=1;
  void changedice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child:
            TextButton(
              onPressed: ()
              {
                setState(() {
                  changedice();
                });
              },
              child: Image(image: AssetImage(
                  "images/dice$leftDiceNumber.png"
              ),
              ),
            ),
          ),
          Expanded(child:
          TextButton(
            onPressed: ()  {
              setState(() {
                changedice();
              });
            },
            child:  Image(image: AssetImage(
                "images/dice$rightDiceNumber.png"
            ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}



