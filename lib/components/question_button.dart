import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionButton extends StatelessWidget {

  const QuestionButton({
    super.key,
    required this.onPressed,
    required this.text
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Material(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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