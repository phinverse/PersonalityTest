// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psycho/constrants/routes.dart';
import 'package:psycho/utilities/calculator.dart';
import 'package:psycho/utilities/question_widget.dart';
import 'package:psycho/constrants/globals.dart';
import 'package:psycho/utilities/show_personality_dialogue.dart';
import 'package:restart_app/restart_app.dart';

class ShortQuestionsView extends StatefulWidget {
  const ShortQuestionsView({super.key});

  @override
  ShortQuestionsViewState createState() => ShortQuestionsViewState();
}

class ShortQuestionsViewState extends State<ShortQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            QuestionWidget(
                text: 'You enjoy taking on leadership roles',
                radioButton: 59,
                personalities: 0),
            QuestionWidget(
                text: 'You enjoy being the center of attention',
                radioButton: 60,
                personalities: 0),
            QuestionWidget(
                text: 'You enjoy being around animals',
                radioButton: 61,
                personalities: 1),
            QuestionWidget(
                text: "You are more of a morning person",
                radioButton: 62,
                personalities: 1),
            QuestionWidget(
                text: 'You are a competitive person',
                radioButton: 63,
                personalities: 2),
            QuestionWidget(
                text: "You a naturally energetic person?",
                radioButton: 64,
                personalities: 2),
            QuestionWidget(
                text: 'You prefer structured over',
                text2: 'unstructured activities',
                radioButton: 65,
                personalities: 3),
            QuestionWidget(
                text: 'You enjoy physical activities and sports',
                radioButton: 66,
                personalities: 3),
            QuestionWidget(
                text: "You are an independent person",
                radioButton: 67,
                personalities: 4),
            QuestionWidget(
                text: "You tend to be a private person",
                radioButton: 68,
                personalities: 4),
            QuestionWidget(
                text: 'You prefer intellectual discussions',
                radioButton: 69,
                personalities: 5),
            QuestionWidget(
                text: "You enjoy problem-solving and",
                text2: 'creative solutions to challenges',
                radioButton: 70,
                personalities: 5),
            QuestionWidget(
                text: "You are a forgiving person",
                radioButton: 71,
                personalities: 6),
            QuestionWidget(
                text: "You are a cooperative person",
                radioButton: 72,
                personalities: 6),
            QuestionWidget(
                text: "You enjoy expressing your creativity",
                text2: "through art or music",
                radioButton: 73,
                personalities: 7),
            QuestionWidget(
                text: "You are a flexible person",
                radioButton: 74,
                personalities: 7),
            QuestionWidget(
                text: "You are an open-minded person",
                radioButton: 75,
                personalities: 5),
            QuestionWidget(
                text: "You a naturally an energetic person?",
                radioButton: 76,
                personalities: 2),
            QuestionWidget(
                text: "You are naturally an assertive person",
                radioButton: 77,
                personalities: 0),
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
          ],
        ),
      ),
    );
  }
}
