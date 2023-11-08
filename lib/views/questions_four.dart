// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:export_readiness/constrants/routes.dart';
import 'package:export_readiness/utilities/question_widget.dart';

class FourthQuestionsView extends StatefulWidget {
  const FourthQuestionsView({super.key});

  @override
  FourthQuestionsViewState createState() => FourthQuestionsViewState();
}

class FourthQuestionsViewState extends State<FourthQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 131, 68),
        title: Text("Predisposition"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
             Text('These sets of questions are designed to assess the readiness of the business in terms of foreign orientation of the staff',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
            QuestionWidget(
                text: 'How will you describe the exposure and familiarity of the staff of your company to exportation?',
                radioButton: 20,
                personalities: 16),
            QuestionWidget(
                text: "What number of staff of the company has worked abroad",
                radioButton: 21,
                personalities: 17),
            QuestionWidget(
                text: 'What number of staff of the company schooled abroad?',
                radioButton: 22,
                personalities: 18),
            QuestionWidget(
                text: 'How will you describe the number of staff of the company that has travelled abroad for holidays?',
                radioButton: 23,
                personalities: 19),
            QuestionWidget(
                text: 'What number of staff of the company can speak an international/foreign language?',
                radioButton: 24,
                personalities: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      thirdPageRoute,
                      (route) => false,
                    );
                  },
                  child: Icon(
                    CupertinoIcons.chevron_back,
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
                  child: Text('4',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 22,
                      )),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      fifthPageRoute,
                      (route) => true,
                    );
                  },
                  child: Text('5',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.greenAccent,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        fifthPageRoute,
                        (route) => true,
                      );
                    },
                    child: Icon(
                      CupertinoIcons.chevron_forward,
                      color: Colors.greenAccent,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    style: TextButton.styleFrom(
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
