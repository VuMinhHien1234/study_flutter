import 'package:adv_basics/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What programming language is used to develop Flutter apps?',
    [
      'Dart',
      'Java',
      'Kotlin',
      'Swift',
    ],
  ),
  QuizQuestion(
    'Which widget is used to create a scrollable list in Flutter?',
    [
      'ListView',
      'Column',
      'Row',
      'Stack',
    ],
  ),
  QuizQuestion(
    'How do you define a stateless widget in Flutter?',
    [
      'Extend StatelessWidget',
      'Extend StatefulWidget',
      'Use setState()',
      'Implement ChangeNotifier',
    ],
  ),
  QuizQuestion(
    'Which Flutter widget allows you to build responsive layouts?',
    [
      'MediaQuery',
      'Container',
      'SizedBox',
      'Scaffold',
    ],
  ),
  QuizQuestion(
    'What command is used to create a new Flutter project?',
    [
      'flutter create my_project',
      'flutter new my_project',
      'flutter init my_project',
      'flutter generate my_project',
    ],
  ),
];
