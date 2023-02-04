import 'package:flutter/material.dart';

class PersonalCardScreen extends StatelessWidget {
  static const String id = '/personal_card_screen';
  const PersonalCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
