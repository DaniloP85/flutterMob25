import 'package:aula1/screen/Dice_screen.dart';
import 'package:aula1/screen/Personal_card_screen.dart';
import 'package:aula1/screen/finished_screen.dart';
import 'package:aula1/screen/login_screen.dart';
import 'package:aula1/screen/movies_screen.dart';
import 'package:aula1/screen/quiz_screen.dart';
import 'package:aula1/screen/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        MenuScreen.id: (context) => const MenuScreen(),
        PersonalCardScreen.id: (context) => const PersonalCardScreen(),
        DiceScreen.id: (context) => const DiceScreen(),
        QuizScreen.id: (context) => const QuizScreen(),
        MoviesScreen.id: (context) => const MoviesScreen(),
        FinishedQuizScreen.id: (context) => FinishedQuizScreen(
            arguments: ModalRoute.of(context)?.settings.arguments
                as FinishedQuizScreenArguments),
      },
    );
  }
}
