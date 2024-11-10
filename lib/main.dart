import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

//void main() {
//runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: Text('Hello Worldi!'),);

    var questions = [
      {
        'questionText':'What\'s your favourite colour?',
        'answers' : ['Black','Red','Green','White'],
      },
      {
        'questionText':'What\'s your favourite animal?',
        'answers' : ['Rabbit','Snake','Elephant','Lion'],
      },
      {
        'questionText':'Who\'s your favourite player?',
        'answers' : ['Ronaldo','Messi','Mbappe','Neymar'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
          backgroundColor: const Color(0xFF7851A9),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
