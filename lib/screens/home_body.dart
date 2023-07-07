import 'package:calculator/rows/a_row.dart';
import 'package:calculator/rows/b_row.dart';
import 'package:calculator/rows/c_dart.dart';
import 'package:calculator/rows/d_row.dart';
import 'package:calculator/rows/e_row.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List numbers = [
    "AC",
    "<",
    "%",
    "/",
    "7",
    "8",
    "9",
    "x",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "+",
    ".",
    "0",
    "="
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(color: Colors.brown),
        ),
        firstRow(numbers: numbers),
        secondRow(numbers: numbers),
        thirdRow(numbers: numbers),
        forthRow(numbers: numbers),
        fifthRow(numbers: numbers),
      ],
    );
  }
}
