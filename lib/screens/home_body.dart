import 'package:calculator/rows/a_row.dart';
import 'package:calculator/rows/b_row.dart';
import 'package:calculator/rows/c_dart.dart';
import 'package:calculator/rows/d_row.dart';
import 'package:calculator/rows/e_row.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../result_model.dart';

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
    "=",
    "+/-"
  ];
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ResultModel>(context);

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.amber.shade100,
              child: Container(
                margin: const EdgeInsets.only(right: 19, bottom: 30),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      child: Text(
                        model.input,
                        style: TextStyle(
                          color: model.inputcolor,
                          fontSize: model.inputfontsize,
                        ),
                      ),
                    ),
                    Text(
                      model.output,
                      style: TextStyle(
                        overflow: model.overflow,
                        fontSize: model.outputfontsize,
                        color: model.outputcolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          firstRow(numbers: numbers),
          secondRow(numbers: numbers),
          thirdRow(numbers: numbers),
          forthRow(numbers: numbers),
          fifthRow(numbers: numbers),
        ],
      ),
    );
  }
}
