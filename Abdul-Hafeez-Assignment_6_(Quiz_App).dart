import 'dart:io';

class Quiz {
  List<Question> questions;
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  Quiz(this.questions);

  void startQuiz() {
    print('Welcome to the Quiz App!\n');
    for (var i = 0; i < questions.length; i++) {
      var question = questions[i];
      print('Question ${i + 1}: ${question.text}');
      for (var j = 0; j < question.options.length; j++) {
        print('${j + 1}. ${question.options[j]}');
      }

      stdout.write('Your answer (1-${question.options.length}): ');
      var userAnswer = int.tryParse(stdin.readLineSync()!);

      if (userAnswer != null &&
          userAnswer >= 1 &&
          userAnswer <= question.options.length) {
        if (question.isCorrect(userAnswer)) {
          print('Correct!\n');
          correctAnswers++;
        } else {
          print('Incorrect!\n');
        }
      } else {
        print('Invalid input. Skipping this question.\n');
      }
    }

    double percentage = (correctAnswers / questions.length) * 100;
    print('Quiz complete!\n');
    print('Total correct answers: $correctAnswers/${questions.length}');
    print('Percentage: ${percentage.toStringAsFixed(2)}%');
    if (percentage > 50) {
      print('Congratulations! You passed the quiz.');
    } else {
      print('Sorry, you did not pass the quiz.');
    }
  }
}

class Question {
  String text;
  List<String> options;
  int correctAnswerIndex;

  Question(this.text, this.options, this.correctAnswerIndex);

  bool isCorrect(int userAnswer) {
    return userAnswer == correctAnswerIndex + 1;
  }
}

void main() {
  final question1 = Question(
      'What is the capital of France?',
      ['Berlin', 'Madrid', 'Paris', 'Rome'],
      2); // Correct answer is Paris

  final question2 = Question(
      'Which planet is known as the Red Planet?',
      ['Mars', 'Venus', 'Jupiter', 'Saturn'],
      0); // Correct answer is Mars

  final question3 = Question(
      'What is 2 + 2?',
      ['3', '4', '5', '6'],
      1); // Correct answer is 4

  final question4 = Question(
      'Youre 4th place right now in a race. What place will you be in when you pass the person in 3rd place?',
      ["1st , 2nd , 3rd , None of the above"],
      2); // Correct answer is 3rd

   final question5 = Question(
      'How many months have 28 days?',
      ["2 , 1 , All of them , Depends if there's a leap year or not"],
      2); // Correct answer is All of Them

final question6 = Question(
      'How many months have 28 days?',
      ["2 , 1 , All of them , Depends if there's a leap year or not"],
      2); // Correct answer is All of Them
  
  final question7 = Question(
      'The answer is really big?',
      ["THE ANSWER , Really big , An elephant , The data given is insufficient"],
      0); // Correct answer is THE ANSWER

  final question8 = Question(
      'Divide 30 by half and add ten?',
      ["40.5 , 50 , 70, NONE"],
      2); // Correct answer is 70

final question9 = Question(
      'Which one of the following waves are used by the common TV remote control?',
      ["Radio waves , Lasers , Infrared waves , Ultrasonic waves"],
      2); // Correct answer is Infrared wave

final question10 = Question(
      'Which gas is safe and an effective extinguisher for all confined fires?',
      ["Nitrogen dioxide , Carbon dioxide , Sulphur dioxide , Nitrous Oxide"],
      1); // Correct answer is Carbon dioxide

  final question11 = Question(
      'If we say the child has an IQ of 100, what does this mean?',
      ["The performance of the child is below average , The performance of the child is above average , The mental age of the child is equal to his actual age , The performance of the child cannot be better"],
      2); // Correct answer is The mental age of the child is equal to his actual age 

 final question12 = Question(
      'Which bacteria are responsible for the formation of curd?',
      ["Lactic acid bacteria , Lactobacillus Acidophillus , Lactobacillus aureus , Bacillus radicicola"],
      1); // Correct answer is Lactobacillus Acidophillus

 final question13 = Question(
      'Which of the following is NOT a component of air? ',
      ["Oxygen , Nitrogen , Carbon dioxide , Chlorine"],
      2); // Correct answer is Carbon dioxide

final question14 = Question(
      'Who wrote the play "Romeo and Juliet"? ',
      [" William Shakespeare , Jane Austen , Charles Dickens , F. Scott Fitzgerald"],
      0); // Correct answer is William Shakespeare

final question15 = Question(
      'What is the largest organ in the human body? ',
      [" Heart , Liver , Brain , Skin"],
      3); // Correct answer is Skin

final question16 =     Question(
      'What is the chemical symbol for water?',
       ['H2O', 'CO2', 'O2', 'NaCl'],
      0); // Correct answer is H2O

final question17 =     Question(
      'What is the chemical symbol for water?',
       ['H2O', 'CO2', 'O2', 'NaCl'],
      0); // Correct answer is H2O

final question18 =     Question(
      'What is the largest planet in our solar system?', 
      ['Earth', 'Mars', 'Jupiter', 'Saturn'], 
      2); // Correct answer is Jupiter

final question19 =     Question(
      'What is the largest planet in our solar system?', 
      ['Earth', 'Mars', 'Jupiter', 'Saturn'], 
      2); // Correct answer is Jupiter

final question20 =     Question(
      'What is the meaning of Pakistan?', 
      ['Muslim Land , Land of five rivers , Desert , Holy Land'], 
      3); // Correct answer is  Holy Land

final question21 =     Question(
      'Who is the first Governor General of Pakistan?', 
      ['Mohammed Ali Jinnah , Liaquat Ali Khan , Ayub Khan ,  Iskander Mirza'], 
      0); // Correct answer is  Mohammed Ali Jinnah

final question22 =     Question(
      'What was the major event of 1971?', 
      ['Bangladesh broke away from Pakistan ,  Explosion of nuclear bomb , Tashkent Agreement , Nawaz Sharif became Prime Minister'], 
      0); // Correct answer is Bangladesh broke away from Pakistan

final question23 =     Question(
      'Which is the national animal of Pakistan?', 
      ['Markhor , Bear , Lion , Tiger'], 
      0); // Correct answer is Markhor


final question24 =     Question(
      'Which is the national bird of Pakistan?', 
      ['Eagle , Crow , Chakor , Peacock'], 
      2); // Correct answer is Chakor


final question25 =     Question(
      'Which is the national language of Pakistan?', 
      ['Hindi , Bengali , Tamil , Urdu'], 
      3); // Correct answer is Urdu

final question26 =     Question(
      'When Musharraf overthrew the government of Nawaz Sharif what designation did he take?', 
      [' Dictator , Consul , Prime Minister , Chief Executive'], 
      3); // Correct answer is Chief Executive

final question27 =     Question(
      'In which year did Pakistan win the Cricket World Cup?', 
      ['1975 , 1987 , 1992 , 1996'], 
      2); // Correct answer is 1992

final question28 =     Question(
      'Where is the tomb of Mughal Emperor Jahangir?', 
      [' Delhi , Agra , Lahore , Karachi'], 
      2); // Correct answer is Lahore

final question29 =     Question(
      'Which is the national flower of Pakistan?', 
      [' Rose , Thistle , Jasmine , Camomille'], 
      2); // Correct answer is Jasmine

final question30 =     Question(
      'Which party was in power in North West Frontier Province at the time of independence?', 
      [' Muslim League , Congress , Justice Party , Communist Party'], 
      1); // Correct answer is Congress







  final quiz = Quiz([question1, question2, question3, question4, question5, question6, question7, 
                    question8, question9, question10, question11, question12, question13, question14, 
                    question15, question16, question17, question18, question19, question20, question21,
                    question22, question23, question24, question25,question26, question27, question28,
                    question29, question30]);
  quiz.startQuiz();

  
  stdout.write('Do you want to restart the quiz? (yes/no): ');
  var restart = stdin.readLineSync()!.toLowerCase();
  if (restart == 'yes') {
    main();
  } else {
    print('Thank you for playing!');
  }
}
