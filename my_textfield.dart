import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final controller;
  final bool obcureText;
  final FormFieldValidator<String> check;

  const MyTextField(
      {super.key,
      required this.labelText,
      required this.controller,
      required this.obcureText,
      required this.check});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: controller,
        obscureText: obcureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.white,
          filled: true,
          hoverColor: Colors.white,
          labelText: labelText,
          isDense: true,
        ),
        validator: check,
      ),
    );
  }
}
