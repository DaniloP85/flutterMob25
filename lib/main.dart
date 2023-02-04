import 'package:aula1/screen/Dice_screen.dart';
import 'package:aula1/screen/Personal_card_screen.dart';
import 'package:aula1/screen/finished_screen.dart';
import 'package:aula1/screen/quiz_screen.dart';
import 'package:aula1/screen/menu_screen.dart';
import 'package:flutter/material.dart';

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
        primarySwatch: Colors.teal,
      ),
      initialRoute: MenuScreen.id,
      routes: {
        MenuScreen.id: (context) => const MenuScreen(),
        PersonalCardScreen.id: (context) => const PersonalCardScreen(),
        DiceScreen.id: (context) => const DiceScreen(),
        QuizScreen.id: (context) => const QuizScreen(),
        FinishedQuizScreen.id: (context) => FinishedQuizScreen(
            arguments: ModalRoute.of(context)?.settings.arguments
                as FinishedQuizScreenArguments),
      },
    );
  }
}
