import 'package:aula1/screen/Dice_screen.dart';
import 'package:aula1/screen/Personal_card_screen.dart';
import 'package:aula1/screen/movies_screen.dart';
import 'package:aula1/screen/quiz_screen.dart';
import 'package:aula1/widgets/Rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  static const String id = '/menu_screen';
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Menu inicial',
                style: GoogleFonts.ubuntu(fontSize: 26),
              ),
              SizedBox(height: 16, width: double.infinity),
              IntrinsicWidth(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      RoundedButton(id:PersonalCardScreen.id, text: 'Cartão pessoal'),
                      SizedBox(height: 16, width: double.infinity),
                      RoundedButton(id: DiceScreen.id, text: 'Desafio dos dados'),
                      SizedBox(height: 16, width: double.infinity),
                      RoundedButton(id: QuizScreen.id, text: 'Quiz'),
                      SizedBox(height: 16, width: double.infinity),
                      RoundedButton(id: MoviesScreen.id, text: 'Request'),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
