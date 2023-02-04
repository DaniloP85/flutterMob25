import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  static const String id = '/dice_screen';

  const DiceScreen({Key? key}) : super(key: key);

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  static const maxValue = 6;
  static final random = Random();

  var randomNumber1 = random.nextInt(maxValue) + 1;
  var randomNumber2 = random.nextInt(maxValue) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            randomNumber1 = random.nextInt(maxValue) + 1;
                          });
                        },
                        child: Image(
                            image: AssetImage(
                                'assets/images/dice${randomNumber1.toString()}.png')))),
                SizedBox(width: 8),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            randomNumber2 = random.nextInt(maxValue) + 1;
                          });
                        },
                        child: Image(
                            image: AssetImage(
                                'assets/images/dice${randomNumber2.toString()}.png')))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
