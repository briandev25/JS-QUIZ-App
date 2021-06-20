import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = const [
    {
      "question": "Inside which HTML element do we put the JavaScript?",
      "choice": [
        {"option": "<scripting>", "score": 0},
        {"option": "<script>", "score": 5},
        {"option": "<js>", "score": 0},
        {"option": "<javascript>", "score": 0}
      ]
    },
    {
      "question": "Where is the correct place to insert a JavaScript?",
      "choice": [
        {
          "option":
              "both the <head> section and the <body> section are correct",
          "score": 0
        },
        {"option": "the <body> section", "score": 5},
        {"option": "the <head> section", "score": 0}
      ]
    },
    {
      "question": "How do you write \"Hello World\" in an alert box?",
      "choice": [
        {"option": "alertBox(\"Hello World \")", "score": 0},
        {"option": "msgBox(\"Hello World \")", "score": 0},
        {"option": "msg(\"Hello World\")", "score": 0},
        {"option": "alert(\"Hello World\")", "score": 5}
      ]
    },
    {
      "question": "How do you call a function named \"myFunction\"?",
      "choice": [
        {"option": "myFunction()", "score": 5},
        {"option": "call myFunction()", "score": 0},
        {"option": "call function myFunction()", "score": 0}
      ]
    },
    {
      "question":
          "How to write an IF statement for executing some code if \"i\" is NOT equal to 5?",
      "choice": [
        {"option": "if(i != 5)", "score": 5},
        {"option": "if i < > 5", "score": 0},
        {"option": "if i =! 5 then", "score": 0},
        {"option": "if(i < > 5)", "score": 0}
      ]
    },
    {
      "question": "How does a WHILE loop start?",
      "choice": [
        {"option": "while(i<=10)", "score": 5},
        {"option": "while i = 1 to 10", "score": 0},
        {"option": "while(i<=10;i++)", "score": 0}
      ]
    },
    {
      "question": "How does a FOR loop start?",
      "choice": [
        {"option": "for(i=0; i <=5)", "score": 0},
        {"option": "for(i=0; i <=5; i++)", "score": 5},
        {"option": "for(i=0; i++)", "score": 0},
        {"option": "for i = 1 to 5", "score": 0}
      ]
    },
    {
      "question": " Is javascript case sensitive?",
      "choice": [
        {"option": "yes", "score": 5},
        {"option": "no", "score": 0}
      ]
    },
    {
      "question": "How do you declare a JavaScript variable?",
      "choice": [
        {"option": "v carName;", "score": 0},
        {"option": "variable carName;", "score": 0},
        {"option": "var carName;", "score": 5}
      ]
    },
    {
      "question": "Which event occurs when the user clicks on an HTML element?",
      "choice": [
        {"option": "onmouseover", "score": 0},
        {"option": "onmouseclick", "score": 0},
        {"option": "onclick", "score": 5},
        {"option": "onchange", "score": 0}
      ]
    }
  ];

  var _selectedQuestion = 0;
  var _totalScore = 0;

  void _selectedOption(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _selectedQuestion = _selectedQuestion + 1;
    });
  }

  void _restartQuiz() {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("JAVASCRIPT QUIZ"),
        ),
        body: _selectedQuestion < _questions.length
            ? Quiz(
                questions: _questions,
                selectedQuestion: _selectedQuestion,
                selectedOption: _selectedOption)
            : Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "You have completed the quiz",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Your total score is : " +
                          ((_totalScore / 50) * 100).toString() +
                          "%",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  RaisedButton(
                    onPressed: _restartQuiz,
                    child: Text("Restart the quiz"),
                  )
                ],
              ),
      ),
    );
  }
}
