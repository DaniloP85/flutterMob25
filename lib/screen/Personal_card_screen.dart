import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          child: Text("data",style: GoogleFonts.ubuntu(fontSize: 16),),
        ),
      ),
    );
  }
}
