import 'package:calculator/colors/colors.dart';
import 'package:flutter/material.dart';

import '../buttons/button.dart';

Widget firstRow({numbers}) => Row(
      children: [
        button(
          text: numbers[0],
          textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
        button(
          text: numbers[1],
              textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
        button(
          text: numbers[2],
               textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
        button(
          text: numbers[3],
               textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
