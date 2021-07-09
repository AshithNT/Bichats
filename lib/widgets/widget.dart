import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
    hintStyle: TextStyle(
      color: Colors.white30,
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white10),
    ),
    /* enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white30),
    ),*/
  );
}

TextStyle SimpleText() {
  return TextStyle(color: Colors.white);
}
