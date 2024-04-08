import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BirthdayCard extends StatelessWidget {
  const BirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Lottie.asset('./assets/json/happy_birthday.json')),
          const Expanded(
            flex: 1,
            child: Text(
              '창민아 \n 생일축하한돠!!!!',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
