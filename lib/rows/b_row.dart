import 'package:flutter/material.dart';

import '../buttons/button.dart';
import '../colors/colors.dart';

Widget secondRow({numbers}) => Row(
  
      children: [
        button(
          text: numbers[4],
        ),
        button(
          text: numbers[5],
        ),
        button(
          text: numbers[6],
        ),
        button(
          text: numbers[7],
               textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
