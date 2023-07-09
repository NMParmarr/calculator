import 'package:calculator/colors/colors.dart';
import 'package:flutter/material.dart';

import '../buttons/button.dart';

Widget firstRow({numbers}) => Row(
      children: [
        Button(
          text: numbers[0],
          textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
        Button(
          text: numbers[1],
          textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
        Button(
          text: numbers[19],
          textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
       
        Button(
          text: numbers[3],
          textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
