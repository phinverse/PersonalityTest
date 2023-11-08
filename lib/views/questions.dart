// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:export_readiness/constrants/routes.dart';
import 'package:export_readiness/utilities/question_widget.dart';

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
        backgroundColor: Color.fromARGB(255, 0, 131, 68),
        title: Text("Promoters"),
      ),
      body: SingleChildScrollView(
       padding: EdgeInsets.fromLTRB(20, 10, 10, 10), //apply padding to LTRB, L:Left, T:Top, R:Right, B:Bottom                 
        child: Column(
          children: [
             SizedBox(height: 10),
             Text('These sets of questions are designed to assess the readiness of the business in terms of the interest and commitment of the owners ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
            QuestionWidget(
                text: 'How committed is the business owner or management to exportation?*',
                radioButton: 0,
                personalities: 1),
            QuestionWidget(
                text: 'How realistic is the desire of the business owner or management to sell in foreign markets?"',
                radioButton: 1,
                personalities: 2),
            QuestionWidget(
                text: 'How experienced and familiar is the business owner or management with international business', 
                radioButton: 2,
                personalities: 3),
            QuestionWidget(
                text: "Has the business owner or management any skills to manage export transactions?",
                radioButton: 3,
                personalities: 4),
            QuestionWidget(
                text: 'How willing and ready is the business owner or management to fund export transactions?',
                radioButton: 4,
                personalities: 3),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      homePageRoute,
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
                  onPressed: () {},
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 22,
                    ),
                  ),
                ),
                Text(' ... ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 20,
                    )),
                
                
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
                          color: Colors.greenAccent)),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        secondPageRoute,
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
