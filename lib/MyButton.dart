import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget{
  const MyButton({
    super.key,
    required this.icon,
    required this.text,
    this.onPressed,
  });

  final IconData icon;
  final String text;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        elevation: 4,
        color: Colors.white,
        child: ListTile(
          onTap: onPressed,
          leading: Icon(icon, color: Colors.blueAccent,),
          title: Text(text, style: GoogleFonts.ubuntu(
              color: Colors.blueAccent
          )),
        ),
      ),
    );
  }
}