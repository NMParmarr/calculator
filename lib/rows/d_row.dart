import 'package:flutter/material.dart';

import '../buttons/button.dart';
import '../colors/colors.dart';

Widget forthRow({numbers}) => Row(
  
      children: [
        Button(
          text: numbers[12],
        ),
        Button(
          text: numbers[13],
        ),
        Button(
          text: numbers[14],
        ),
        Button(
          text: numbers[15],
               textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
