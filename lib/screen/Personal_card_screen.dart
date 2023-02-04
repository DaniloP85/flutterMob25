import 'package:flutter/material.dart';

class PersonalCardScreen extends StatelessWidget {
  const PersonalCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}
