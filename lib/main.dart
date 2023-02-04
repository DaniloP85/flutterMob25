import 'package:aula1/screen/Personal_card_screen.dart';
import 'package:aula1/screen/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Danilo Santos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'menu_screen',
      routes: {
        'menu_screen': (context) => const MenuScreen(),
        'personal_card_screen': (context) => const PersonalCardScreen(),
      },
    );
  }
}


