// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psycho/constrants/routes.dart';
import 'package:psycho/utilities/question_widget.dart';

class SecondQuestionsView extends StatefulWidget {
  const SecondQuestionsView({super.key});

  @override
  SecondtQuestionsViewState createState() => SecondtQuestionsViewState();
}

class SecondtQuestionsViewState extends State<SecondQuestionsView> {
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
                text: 'You are an empathetic person',
                radioButton: 20,
                personalities: 6),
            QuestionWidget(
                text: "You enjoy taking risks",
                radioButton: 21,
                personalities: 7),
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
                text: 'You prefer intellectual discussions',
                radioButton: 26,
                personalities: 5),
            QuestionWidget(
                text: "You're comfortable with",
                text2: "change and uncertainty",
                radioButton: 27,
                personalities: 7),
            QuestionWidget(
                text: "You are more of a morning person",
                radioButton: 28,
                personalities: 1),
            QuestionWidget(
                text: "You enjoy spending time in nature",
                radioButton: 29,
                personalities: 1),

            QuestionWidget(
                text: "You enjoy problem-solving and",
                text2: 'creative solutions to challenges',
                radioButton: 30,
                personalities: 5),
            QuestionWidget(
                text: "You enjoy being around people",
                text2: 'who have similar interests to you',
                radioButton: 31,
                personalities: 1),
            QuestionWidget(
                text: "You prefer to work in a team",
                radioButton: 32,
                personalities: 0),
            QuestionWidget(
                text: "You are comfortable speaking in public",
                radioButton: 33,
                personalities: 0),
            QuestionWidget(
                text: "You enjoy learning new things",
                radioButton: 34,
                personalities: 5),
            QuestionWidget(
                text: "You are a forgiving person",
                radioButton: 35,
                personalities: 6),
            QuestionWidget(
                text: "You enjoy being around children",
                radioButton: 36,
                personalities: 1),
            QuestionWidget(
                text: "You are a compassionate person",
                radioButton: 37,
                personalities: 6),
            QuestionWidget(
                text: "You are an adventurous person",
                radioButton: 39,
                personalities: 7),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      firstPageRoute,
                      (route) => false,
                    );
                  },
                  child: Icon(
                    CupertinoIcons.chevron_back,
                    color: Colors.white,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      textStyle:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Text(
                  '1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text('2',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 20,
                    )),
                Text('3',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        thirdPageRoute,
                        (route) => true,
                      );
                    },
                    child: Icon(
                      CupertinoIcons.chevron_forward,
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
