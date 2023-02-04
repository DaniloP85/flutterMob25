import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/question_button.dart';
import '../model/question_model.dart';
import 'finished_screen.dart';

class QuizScreen extends StatefulWidget {
  static const String id = '/quiz_screen';

  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

List<QuestionModel> loadQuestion() {
  return [
  QuestionModel(question: 'Qual é o país que mais produz café no mundo?', options: ['Canadá', 'Índia', 'Argentina', 'Brasil', 'Etiópia'], answer: 3),
  QuestionModel(question: 'País conhecido por ser o mais fechado do mundo?', options: ['Myammar', 'Coréia do Norte', 'Armenia', 'Iêmen', 'Vietnã'], answer: 1),
  QuestionModel(question: 'País que possui a Groelândia como território?', options: ['Finlândia', 'Canadá', 'Reino Unido', 'Estados Unidos', 'Dinamarca'], answer: 4),
  QuestionModel(question: 'País com a maior média de QI?', options: ['China', 'Alemanha', 'Japão', 'Coreia do Sul', 'Noruega'], answer: 3),
  QuestionModel(question: 'País com maior IDH?', options: ['Noruega', 'Reino Unido', 'Canadá', 'Holanda', 'México'] , answer: 0),
  QuestionModel(question: 'Continente menos industrializado?', options: ['África', 'Ásia', 'Oceânia'], answer: 0),
  QuestionModel(question: 'País com maior comunidade japonesa fora do Japão?', options: ['Estados Unidos', 'Brasil', 'Coreia do Sul'], answer: 1)
  ];
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuestionModel> questions = [];
  var questionIndex = 0;
  var score = 0;

  @override
  void initState() {
    super.initState();
    questions = loadQuestion();
  }

  void onOptionPressed(int selectOption)  {
    final currentQuestion = questions[questionIndex];

    if (selectOption == currentQuestion.answer) {
      score++;
    }

    goToNextQuestion();
  }

  void goToNextQuestion() {
    if (questionIndex == questions.length - 1) {
      Navigator.pushReplacementNamed(
        context,
        FinishedQuizScreen.id,
        arguments: FinishedQuizScreenArguments(score: score),
      );
    } else {
      setState(() {
        questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentQuestion.question),
              const SizedBox(height: 32),
              ListView.separated(
                  itemCount: currentQuestion.options.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) =>
                  const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return QuestionButton(
                        text: currentQuestion.options[index],
                        onPressed: () {
                          onOptionPressed(index);
                        }
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}