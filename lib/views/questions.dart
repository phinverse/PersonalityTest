// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psycho/constrants/routes.dart';
import 'package:psycho/main.dart';
import 'package:psycho/utilities/calculator.dart';
import 'package:psycho/utilities/question_widget.dart';
import 'package:psycho/constrants/globals.dart';

import 'package:psycho/utilities/show_personality_dialogue.dart';

class QuestionsView extends StatefulWidget {
  @override
  _QuestionsViewState createState() => _QuestionsViewState();
}

class _QuestionsViewState extends State<QuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(child: Text('16 Personalities Test')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            QuestionWidget(
                text: 'You avoid being alone',
                radioButton: 0,
                personalities: 0),
            QuestionWidget(
                text: 'You tend to make decisions quickly',
                radioButton: 1,
                personalities: 2),
            QuestionWidget(
                text: 'You are not really a curious person',
                radioButton: 2,
                personalities: 3),
            QuestionWidget(
                text: "You don't like trying new things and",
                text2: "Stepping outside of your comfort zone",
                radioButton: 3,
                personalities: 3),
            QuestionWidget(
                text: 'You prefer structured over',
                text2: 'unstructured activities',
                radioButton: 4,
                personalities: 3),
            QuestionWidget(
                text: 'You are not an optimistic person',
                radioButton: 5,
                personalities: 2),
            QuestionWidget(
                text: 'You enjoy being the center of attention',
                radioButton: 6,
                personalities: 0),
            QuestionWidget(
                text: 'You consider yourself as a',
                text2: 'highly organized person',
                radioButton: 7,
                personalities: 3),
            QuestionWidget(
                text: 'You enjoy taking on leadership roles',
                radioButton: 8,
                personalities: 0),
            QuestionWidget(
                text: 'You are not a patient person',
                radioButton: 9,
                personalities: 3),
            QuestionWidget(
                text: 'You enjoy meeting',
                text2: 'new people and socializing',
                radioButton: 10,
                personalities: 0),
            QuestionWidget(
                text: "You don't tend to be a private person",
                radioButton: 11,
                personalities: 0),
            QuestionWidget(
                text: 'You are a logical and analytical thinker',
                radioButton: 12,
                personalities: 2),
            QuestionWidget(
                text: 'You are not a creative person',
                radioButton: 13,
                personalities: 3),
            QuestionWidget(
                text: 'You enjoy physical activities and sports',
                radioButton: 14,
                personalities: 3),
            QuestionWidget(
                text: 'You generally prioritize the needs',
                text2: 'of others over your own',
                radioButton: 15,
                personalities: 2),
            QuestionWidget(
                text: 'You are naturally an organized person',
                radioButton: 16,
                personalities: 3),
            QuestionWidget(
                text: 'You consider yourself as a perfectionist',
                radioButton: 17,
                personalities: 3),
            QuestionWidget(
                text: 'You are not a good listener',
                radioButton: 18,
                personalities: 2),
            QuestionWidget(
                text: 'You enjoy being around',
                text2: 'large groups of people',
                radioButton: 19,
                personalities: 0),
            QuestionWidget(
                text: 'You are not an empathetic person',
                radioButton: 20,
                personalities: 2),
            QuestionWidget(
                text: "You avoid taking risks",
                radioButton: 21,
                personalities: 3),
            QuestionWidget(
                text: 'You prefer to plan things in advance',
                text2: 'rather than being spontaneous',
                radioButton: 22,
                personalities: 3),
            QuestionWidget(
                text: 'You are a decisive person',
                radioButton: 23,
                personalities: 2),
            QuestionWidget(
                text: 'You are a competitive person',
                radioButton: 24,
                personalities: 2),
            QuestionWidget(
                text: 'You enjoy being around animals',
                radioButton: 25,
                personalities: 1),
            QuestionWidget(
                text: 'You avoid intellectual discussions',
                radioButton: 26,
                personalities: 1),
            QuestionWidget(
                text: "You're not comfortable with",
                text2: "change and uncertainty",
                radioButton: 27,
                personalities: 3),
            QuestionWidget(
                text: "You are more of a morning person",
                radioButton: 28,
                personalities: 1),
            QuestionWidget(
                text: "You enjoy spending time in nature",
                radioButton: 28,
                personalities: 1),
            QuestionWidget(
                text: "You don't enjoy problem-solving and",
                text2: 'creative solutions to challenges',
                radioButton: 28,
                personalities: 1),
            QuestionWidget(
                text: "You enjoy being around people",
                text2: 'who have similar interests to you',
                radioButton: 28,
                personalities: 1),
            QuestionWidget(
                text: "You prefer to work in a team",
                radioButton: 28,
                personalities: 0),
            QuestionWidget(
                text: "You are comfortable speaking in public",
                radioButton: 28,
                personalities: 0),
            QuestionWidget(
                text: "You don't enjoy learning new things",
                radioButton: 28,
                personalities: 1),
            QuestionWidget(
                text: "You are not really a forgiving person",
                radioButton: 28,
                personalities: 2),
            QuestionWidget(
                text: "You enjoy being around children",
                radioButton: 28,
                personalities: 1),
            QuestionWidget(
                text: "You are not a compassionate person",
                radioButton: 28,
                personalities: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      homePageRoute,
                      (route) => false,
                    );
                  },
                  child: Icon(
                    CupertinoIcons.arrow_left_circle_fill,
                    color: Colors.white,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        personalityType = 'is ';
                        PersonalityCalculator().calculatePersonalityType();
                        showPersonalityDialogue(context, personalityType,
                            Colors.grey[900], Colors.black);
                      });
                    },
                    child: Icon(
                      CupertinoIcons.check_mark_circled_solid,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        textStyle: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
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
