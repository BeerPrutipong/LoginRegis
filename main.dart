import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(const Index());

class Index extends StatelessWidget {
  const Index({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Calculatetor(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}

class Calculatetor extends StatefulWidget {
  const Calculatetor({super.key});
  @override
  State<Calculatetor> createState() => _Calculatetor();
}

class _Calculatetor extends State<Calculatetor> {
  String titleAppbar = "Calculator";
  TextEditingController inputNumber1 = TextEditingController();
  TextEditingController inputNumber2 = TextEditingController();
  int sum = 0;
  int _calculate() {
    int? num1 = int?.parse(inputNumber1.text);
    int? num2 = int?.parse(inputNumber2.text);
    sum = num1 + num2;
    return sum;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titleAppbar),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: inputNumber1,
              decoration: const InputDecoration(labelText: "Enter number 1"),
            ),
            TextField(
              controller: inputNumber2,
              decoration: const InputDecoration(labelText: "Input number 2"),
            ),
            FloatingActionButton.small(
              onPressed: _calculate,
              child: Text("Calcaulate"),
            ),
            Text(sum.toString())
          ],
        ));
  }
}
