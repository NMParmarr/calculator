import 'package:flutter/material.dart';

import '../buttons/button.dart';
import '../colors/colors.dart';

Widget thirdRow({numbers}) => Row(
      children: [
        Button(
          text: numbers[8],
        ),
        Button(
          text: numbers[9],
        ),
        Button(
          text: numbers[10],
        ),
        Button(
          text: numbers[11],
               textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
