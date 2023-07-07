import 'package:calculator/colors/colors.dart';
import 'package:flutter/material.dart';

import '../buttons/button.dart';

Widget fifthRow({numbers}) => Row(
      children: [
        button(
          text: numbers[16],
        ),
        button(
          text: numbers[17],
        ),
        button(
          text: numbers[18],
          backgroundColor: orangeColor,
        ),
      ],
    );
