class QuestionModel{
  QuestionModel({
    required this.question,
    required this.options,
    required this.answer,
});
  String question;
  int answer;
  List<String> options;
}