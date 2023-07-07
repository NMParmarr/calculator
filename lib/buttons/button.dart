import 'package:calculator/colors/colors.dart';
import 'package:flutter/material.dart';

Widget button({text, textColor = Colors.white, backgroundColor = buttonColor}) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(8),
          elevation: 1,
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(9)),
          ),
        ),
        onPressed: () {
          print(text);
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    ),
  );
}
