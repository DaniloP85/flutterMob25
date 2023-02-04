import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {

  const RoundedButton({
    super.key,
    required this.id,
    required this.text
  });

  final String id;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, id);
      },
      child: Material(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(1000),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}