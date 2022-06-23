// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(height: 20),
        /*Image from folder*/
        Center(
          child: Image.asset(
            "assets/$diceNumber.png",
            height: 250,
            width: 250,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        /*Button*/
        MaterialButton(
          color: Color.fromARGB(255, 17, 99, 165),
          onPressed: changeDice,
          child: Text(
            "Roll",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(height: 70),
        Text(
          "You get $diceNumber",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
        ),
      ]),
    );
  }
}
