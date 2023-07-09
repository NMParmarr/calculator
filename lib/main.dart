import 'package:calculator/result_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResultModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: const Color.fromARGB(255, 255, 200, 0),
        title: 'Calculator',
        theme: ThemeData(primaryColor: Colors.black),
        home: const HomePage(),
      ),
    );
  }
}
