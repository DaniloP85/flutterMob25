import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceScreen extends StatefulWidget {
  static const String id = '/dice_screen';

  const DiceScreen({Key? key}) : super(key: key);

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  static const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              children: [
                Expanded(
                    child: Image(image: AssetImage('assets/images/dice1.png'))),
                SizedBox(width: 8),
                Expanded(
                    child: Image(image: AssetImage('assets/images/dice4.png'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
