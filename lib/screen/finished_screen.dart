import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishedQuizScreen extends StatelessWidget {
  static const String id = '/finished_quiz';

  const FinishedQuizScreen({Key? key, required this.arguments})
      : super(key: key);

  final FinishedQuizScreenArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parabens!',
            style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 16)),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: CircleAvatar(
                radius: 150,
                backgroundImage: NetworkImage('https://media1.giphy.com/media/BPJmthQ3YRwD6QqcVD/giphy.gif'),
              ),
            ),
            Text('Sua pontuação foi de ${arguments.score}',
                style: GoogleFonts.ubuntu(color: Colors.black, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class FinishedQuizScreenArguments {
  FinishedQuizScreenArguments({required this.score});

  int score;
}
