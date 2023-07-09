import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class ResultModel extends ChangeNotifier {
  var input = "0";
  var output = "0";
  double inputfontsize = 60.0;
  double outputfontsize = 40.0;
  Color outputcolor = Colors.black.withOpacity(0.4);
  Color inputcolor = Colors.black;
  bool isEqual = false;
  final error = "ERROR:Invalid Format";
  String prevoutput = "";
  TextOverflow overflow = TextOverflow.ellipsis;

  bool isAddMinus = true;

  String? err;
  onButtonClick(value) {
    if (value != "=") {
      isEqual = false;
    }

    if (input == "0") {
      input = input.substring(0, input.length - 1);
    }

    if (value == "AC") {
      isAddMinus = true;
      input = "0";
      output = "0";
    } else if (value == "<") {
      isAddMinus = true;
      if (input.isNotEmpty) {
        process();
        notifyListeners();
      }
      if (output == error) {
        output = "0";
      }
      try {
        input = input.substring(0, input.length - 1);
        // output = output.substring(0, output.length - 1);
      } catch (e) {
        output = "0";
      }
    } else if (value == "+/-") {
      if (!input.endsWith("-") || !input.endsWith("+")) {
        if (isAddMinus) {
          isAddMinus = !isAddMinus;

          input += "-";
        } else {
          isAddMinus = !isAddMinus;
          if (input.endsWith("-")) {
            input = input.substring(0, input.length - 1);
          }
        }
      } else if (input.endsWith("+")) {
        input = input.substring(0, input.length - 1);
        input += "-";
      } else {
        input = input.substring(0, input.length - 1);
        !isAddMinus ? null : input += "+";
      }

      notifyListeners();
    } else if (value == "=") {
      prevoutput = output;
      isEqual = true;
      if (outputfontsize == 60) {
        input = output = "0";
      }
      notifyListeners();
      input = output;
    } else if (value == "x" || value == "/" || value == "+" || value == "-") {
      isAddMinus = true;
      if (input.endsWith("x") ||
          input.endsWith("/") ||
          input.endsWith("+") ||
          input.endsWith("-")) {
        input = input.substring(0, input.length - 1);
        notifyListeners();
      }
      input = input + value;
    } else if (value == ".") {
      isAddMinus = true;
      if (input.endsWith(".")) {
      } else {
        input += ".";
      }
    } else {
      isAddMinus = true;
      input = input + value.toString();
      process();
    }

    if (isEqual) {
      inputfontsize = 0;
      outputfontsize = 60;
      outputcolor = Colors.black;
      notifyListeners();
    } else {
      inputfontsize = 60.0;
      outputfontsize = 40.0;

      outputcolor = Colors.black.withOpacity(0.4);
      inputcolor = Colors.black;
      overflow = TextOverflow.ellipsis;
    }
    if (output == error) {
      outputcolor = Colors.red;
      inputcolor = Colors.black.withOpacity(0.4);
      overflow = TextOverflow.clip;
    }

    notifyListeners();
  }

  process() {
    var prinput = input;

    prinput = prinput.replaceAll("%", "/100x");

    var newInput = prinput.substring(0, prinput.length - 1);
    if (prinput.endsWith("/") ||
        prinput.endsWith("x") ||
        prinput.endsWith("+")) {
      prinput = prinput.substring(0, prinput.length - 1);
      notifyListeners();
    }
    if (prinput.endsWith("-") &&
        (newInput.endsWith("x") ||
            newInput.endsWith("/") ||
            newInput.endsWith("-") ||
            newInput.endsWith("+"))) {
      prinput = prinput.substring(0, prinput.length - 2);
    } else if (prinput.endsWith("-")) {
      prinput = prinput.substring(0, prinput.length - 1);
    }

    var userInput = prinput;
    userInput = prinput.replaceAll("x", "*");
    try {
      Parser p = Parser();
      Expression exp = p.parse(userInput);
      ContextModel cm = ContextModel();
      var result = exp.evaluate(EvaluationType.REAL, cm);
      output = result.toString();
    } catch (e) {
      err = e.toString();
      output = error;
    }
    if (output.endsWith(".0")) {
      output = output.substring(0, output.length - 2);
    }
    notifyListeners();
  }
}
