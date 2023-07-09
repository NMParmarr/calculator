import 'package:flutter/material.dart';
import '../buttons/button.dart';
import '../colors/colors.dart';

Widget secondRow({numbers}) => Row(
      children: [
        Button(
          text: numbers[4],
        ),
        Button(
          text: numbers[5],
        ),
        Button(
          text: numbers[6],
        ),
        Button(
          text: numbers[7],
          textColor: orangeColor,
          backgroundColor: operatorColor,
        ),
      ],
    );
