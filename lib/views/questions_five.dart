// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:export_readiness/constrants/routes.dart';
import 'package:export_readiness/utilities/calculator.dart';
import 'package:export_readiness/utilities/question_widget.dart';
import 'package:export_readiness/constrants/globals.dart';
import 'package:export_readiness/utilities/show_personality_dialogue.dart';
import 'package:restart_app/restart_app.dart';

class FifthQuestionsView extends StatefulWidget {
  const FifthQuestionsView({super.key});

  @override
  FifthQuestionsViewState createState() => FifthQuestionsViewState();
}

class FifthQuestionsViewState extends State<FifthQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 131, 68),
        title: Text("Purpose"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ SizedBox(height: 10),
             Text('These sets of questions are designed to assess the readiness the business in terms of the reason for going to sell abroad',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
            QuestionWidget(
                text: "How do you evaluate the desire of the business to build a global brand?",
                radioButton: 40,
                personalities: 21),
            QuestionWidget(
                text: "How do you evaluate the desire of the business to access government incentives?",
                radioButton: 41,
                personalities: 22),
            QuestionWidget(
                text: "How do you evaluate the desire of the business to take advantage of the benefits presented by free trade agreements?",
                radioButton: 42,
                personalities: 23),
            QuestionWidget(
                text: "How do you evaluate the desire of the business to use export business as a survival strategy?",
                radioButton: 43,
                personalities: 24),
            QuestionWidget(
                text: "How do you evaluate the desire of the business to earn foreign currency?",
                radioButton: 44,
                personalities: 25),
           
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Restart.restartApp(webOrigin: homePageRoute);
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    child: Icon(
                      CupertinoIcons.arrow_counterclockwise,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        personalityType = '';
                        PersonalityCalculator().calculatePersonalityType();
                        if (personalityType == 'ISTJ') {
                          personalityType = istj;
                        } else if (personalityType == 'ISFJ') {
                          personalityType = isfj;
                        } else if (personalityType == 'INFJ') {
                          personalityType = infj;
                        } else if (personalityType == 'INTJ') {
                          personalityType = intj;
                        } else if (personalityType == 'ISTP') {
                          personalityType = istp;
                        } else if (personalityType == 'ISFP') {
                          personalityType = isfp;
                        } else if (personalityType == 'INTP') {
                          personalityType = intp;
                        } else if (personalityType == 'ESTP') {
                          personalityType = estp;
                        } else if (personalityType == 'ESFP') {
                          personalityType = esfp;
                        } else if (personalityType == 'ENFP') {
                          personalityType = enfp;
                        } else if (personalityType == 'ENTP') {
                          personalityType = entp;
                        } else if (personalityType == 'ESTJ') {
                          personalityType = estj;
                        } else if (personalityType == 'ESFJ') {
                          personalityType = esfj;
                        } else if (personalityType == 'ENFJ') {
                          personalityType = enfj;
                        } else if (personalityType == 'ENTJ') {
                          personalityType = entj;
                        } else if (personalityType == 'INFP') {
                          personalityType = infp;
                        }
                        showPersonalityDialogue(context, personalityType,
                            Colors.grey[900], Colors.black);
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    child: Icon(
                      CupertinoIcons.check_mark,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      fourthPageRoute,
                      (route) => false,
                    );
                  },
                  child: Icon(
                    CupertinoIcons.back,
                    color: Colors.greenAccent,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  style: TextButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      firstPageRoute,
                      (route) => false,
                    );
                  },
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(' ... ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.greenAccent,
                        fontSize: 16,
                      )),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '5',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
