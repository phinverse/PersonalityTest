// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:export_readiness/constrants/routes.dart';
import 'package:export_readiness/utilities/question_widget.dart';

class SecondQuestionsView extends StatefulWidget {
  const SecondQuestionsView({super.key});

  @override
  SecondQuestionsViewState createState() => SecondQuestionsViewState();
}

class SecondQuestionsViewState extends State<SecondQuestionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 131, 68),
        title: Text("Products"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
             Text('These sets of questions are designed to assess the readiness of the business in terms of the suitability of the products for consumers in the export market',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
            QuestionWidget(
                text: 'Are you familiar with the clear advantages that your product has over competing products?',
                radioButton: 20,
                personalities: 6),
            QuestionWidget(
                text: "How satisfied are you about the resilience of your product to withstand the stress of freight and widely varying environmental conditions in the export market?",
                radioButton: 21,
                personalities: 7),
            QuestionWidget(
                text: 'How easy is it for anyone to use your companys product in the export market without any technical support?',
                radioButton: 22,
                personalities: 8),
            QuestionWidget(
                text: 'How will you describe the ease of adapting your product quality to make it suitable for the export market?',
                radioButton: 23,
                personalities: 9),
            QuestionWidget(
                text: ' How will you describe the quality of your product packaging and the conformity of the product’s labelling to requirements in the export market?',
                radioButton: 24,
                personalities: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      firstPageRoute,
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
                  child: Text('2',
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
                        thirdPageRoute,
                        (route) => true,
                      );
                    },
                    child: Icon(
                      CupertinoIcons.chevron_forward,
                      color: Colors.greenAccent,
                      size: 24.0,
                      semanticLabel: 'Next Questions',
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
