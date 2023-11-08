// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:export_readiness/constrants/routes.dart';
import 'package:export_readiness/utilities/question_widget.dart';

class ThirdQuestionsView extends StatefulWidget {
  const ThirdQuestionsView({super.key});

  @override
  ThirdQuestionsViewState createState() => ThirdQuestionsViewState();
}

class ThirdQuestionsViewState extends State<ThirdQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 131, 68),
        title: Text("Pricing"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
             Text('These sets of questions are designed to assess the readiness of the business in terms of the ability to compete in the export market',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
            QuestionWidget(
                text: 'How competitive is the price of your product in the local market?',
                radioButton: 20,
                personalities: 11),
            QuestionWidget(
                text: "How satisfied are you on the impact of economy of scale on cost reduction?",
                radioButton: 21,
                personalities: 12),
            QuestionWidget(
                text: 'How will you describe your companys access to information on the cost elements in exportation and how to reduce them?',
                radioButton: 22,
                personalities: 13),
            QuestionWidget(
                text: 'How will you describe your company’s access to information about competitors prices in export market?',
                radioButton: 23,
                personalities: 14),
            QuestionWidget(
                text: 'How will you describe your understanding of strategies for cost reduction in export business?',
                radioButton: 24,
                personalities: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      secondPageRoute,
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
                  child: Text('3',
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
                        fourthPageRoute,
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
