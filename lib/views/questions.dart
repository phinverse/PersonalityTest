// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:psycho/constrants/routes.dart';
import 'package:psycho/utilities/question_widget.dart';

class FirstQuestionsView extends StatefulWidget {
  const FirstQuestionsView({super.key});

  @override
  FirstQuestionsViewState createState() => FirstQuestionsViewState();
}

class FirstQuestionsViewState extends State<FirstQuestionsView> {
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
                text: 'You avoid being alone',
                radioButton: 0,
                personalities: 0),
            QuestionWidget(
                text: 'You tend to make decisions quickly',
                radioButton: 1,
                personalities: 2),
            QuestionWidget(
                text: 'You are really a curious person',
                radioButton: 2,
                personalities: 7),
            QuestionWidget(
                text: "You enjoy trying new things and",
                text2: "Stepping outside of your comfort zone",
                radioButton: 3,
                personalities: 7),
            QuestionWidget(
                text: 'You prefer structured over',
                text2: 'unstructured activities',
                radioButton: 4,
                personalities: 3),
            QuestionWidget(
                text: 'You are naturally an optimistic person',
                radioButton: 5,
                personalities: 6),
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
                text: 'You are nataurally a patient person',
                radioButton: 9,
                personalities: 7),
            QuestionWidget(
                text: 'You enjoy meeting',
                text2: 'new people and socializing',
                radioButton: 10,
                personalities: 0),
            QuestionWidget(
                text: "You tend to be a private person",
                radioButton: 11,
                personalities: 4),
            QuestionWidget(
                text: 'You are a logical and analytical thinker',
                radioButton: 12,
                personalities: 2),
            QuestionWidget(
                text: 'You are a creative person',
                radioButton: 13,
                personalities: 7),
            QuestionWidget(
                text: 'You enjoy physical activities and sports',
                radioButton: 14,
                personalities: 3),
            QuestionWidget(
                text: 'You generally prioritize the needs',
                text2: 'of others over your own',
                radioButton: 15,
                personalities: 6),
            QuestionWidget(
                text: 'You are naturally an organized person',
                radioButton: 16,
                personalities: 7),
            QuestionWidget(
                text: 'You consider yourself as a perfectionist',
                radioButton: 17,
                personalities: 3),
            QuestionWidget(
                text: 'You are a good listener',
                radioButton: 18,
                personalities: 6),
            QuestionWidget(
                text: 'You enjoy being around',
                text2: 'large groups of people',
                radioButton: 19,
                personalities: 0),
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
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text('...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      thirdPageRoute,
                      (route) => true,
                    );
                  },
                  child: Text('3',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        secondPageRoute,
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
