import 'package:flutter/material.dart';
import './question.dart';

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
      'What\'s your favourite colour?',
      'What\'s your favourite animal?',
      'What\'s your favourite food?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
          backgroundColor: const Color(0xFF7851A9),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(_questionIndex)),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              //onPressed: () => print ('Answer 2 Chosen'),
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
