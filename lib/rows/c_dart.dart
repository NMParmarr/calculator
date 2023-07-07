import 'package:flutter/material.dart';

import '../buttons/button.dart';
import '../colors/colors.dart';

Widget thirdRow({numbers}) => Row(
      children: [
        button(
          text: numbers[8],
        ),
        button(
          text: numbers[9],
        ),
        button(
          text: numbers[10],
        ),
        button(
          text: numbers[11],
               textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
