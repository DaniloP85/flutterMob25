import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatelessWidget {
  static const String id = '/quiz_screen';
  const Quiz({Key? key}) : super(key: key);

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
