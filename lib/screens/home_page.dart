import 'package:calculator/screens/home_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../result_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ResultModel>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: Row(
          children: [
            const Text(
              "Previous Answer : ",
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.brown,
              ),
            ),
            Expanded(
              child: Text(
                model.prevoutput,
                style: const TextStyle(
                  color: Colors.brown,
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: const HomeBody(),
    );
  }
}
