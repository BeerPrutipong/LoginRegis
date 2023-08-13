import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  final String btntext;
  final onpressed;
  final Color color;
  const MyBotton({super.key, required this.onpressed, required this.btntext , required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(primary: color),
        child: Text(btntext));
  }
}
