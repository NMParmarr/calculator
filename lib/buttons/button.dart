// ignore_for_file: must_be_immutable

import 'package:calculator/colors/colors.dart';
import 'package:calculator/result_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button extends StatefulWidget {
  String text;
  Color textColor;
  Color backgroundColor;
  Button(
      {required this.text,
      this.textColor = Colors.white,
      this.backgroundColor = buttonColor,
      super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Consumer<ResultModel>(
          builder: (context, model, child) => ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(12),
              elevation: 1,
              backgroundColor: widget.backgroundColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
            ),
            onPressed: () => model.onButtonClick(widget.text),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: widget.textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
