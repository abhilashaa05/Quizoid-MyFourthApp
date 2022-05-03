class QuestionForm {
  late String questiontext;
  late bool answertext;

  QuestionForm({required String q, required bool a}) {
    questiontext = q;
    answertext = a;
  }
}



class QuestionBank {
  int questionNo = 0;
  List<QuestionForm> question = [
    QuestionForm(q: 'The "Forbidden City" is in Beijing.', a: true),
    QuestionForm(q: 'Hurricanes and typhoons are the same thing.', a: true),
    QuestionForm(q: 'An American was the first man in space.', a: false),
    QuestionForm(q: 'The longest river in the world is the Amazon River.', a: false),
    QuestionForm(q: 'The mosquito has a record for killing more people than any other species in written history.', a: true),
    QuestionForm(q: 'South Africa officially has two capital cities.', a: false),
    QuestionForm(q: 'Human facial hair grows at a higher rate than the rest of the body’s hair. ', a: true),
    QuestionForm(q: 'The Atlantic Ocean is the world’s biggest ocean.', a: false),
    QuestionForm(q: 'Nepal is the only country in the world without a rectangular flag.', a: true),
    QuestionForm(q: 'The USA has the longest coastline in the world.', a: false),
  ];

  void nextQuestion() {
    if (questionNo < question.length - 1) {
      questionNo++; //2
    }
  }

  String getQuestion() {
    return question[questionNo].questiontext;
  }

  bool getAnswer() {
    return question[questionNo].answertext;
  }

  bool isFinished() {
    if (questionNo == question.length - 1) {
      return true;
    }
    else{
      return false;
    }
  }
}