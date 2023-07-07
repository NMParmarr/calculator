import 'package:flutter/material.dart';

import '../buttons/button.dart';
import '../colors/colors.dart';

Widget forthRow({numbers}) => Row(
  
      children: [
        button(
          text: numbers[12],
        ),
        button(
          text: numbers[13],
        ),
        button(
          text: numbers[14],
        ),
        button(
          text: numbers[15],
               textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
