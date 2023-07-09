import 'package:calculator/colors/colors.dart';
import 'package:flutter/material.dart';

import '../buttons/button.dart';

Widget fifthRow({numbers}) => Row(
      children: [
        Button(
          text: numbers[2],
          textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
        Button(
          text: numbers[17],
        ),
        Button(
          text: numbers[16],
        ),
        Button(
          text: numbers[18],
          backgroundColor: orangeColor,
        ),
      ],
    );
