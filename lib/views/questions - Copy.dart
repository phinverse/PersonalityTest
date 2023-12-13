import 'package:flutter/material.dart';
import 'package:export_readiness/constrants/routes.dart';
import 'package:export_readiness/utilities/question_widget.dart';
import 'package:export_readiness/views/questions_two.dart';

class ResponseManager {
  static List<int?> responses = List.filled(5, null); // Adjust the size as per your number of questions
}

class FirstQuestionsView extends StatefulWidget {
  const FirstQuestionsView({Key? key}) : super(key: key);



  @override
  FirstQuestionsViewState createState() => FirstQuestionsViewState();
}

class FirstQuestionsViewState extends State<FirstQuestionsView> {
  int currentPage = 1;
  final int totalPages = 5; // Total number of pages

  void _navigateToSecondPage(BuildContext context) {
    Navigator.pushReplacement(
      context,
      FadePageRoute(builder: (context) => SecondQuestionsView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Promoters"),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 10),
            Text(
              'These sets of questions are designed to assess the readiness of the business in terms of the interest and commitment of the owners.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            QuestionWidget(
              text: 'How committed is the business owner or management to exportation?*',
              radioButton: 0,
              personalities: 1,
            ),
            QuestionWidget(
              text: 'How realistic is the desire of the business owner or management to sell in foreign markets?"',
              radioButton: 1,
              personalities: 2,
            ),
            QuestionWidget(
              text: 'How experienced and familiar is the business owner or management with international business',
              radioButton: 2,
              personalities: 3,
            ),
            QuestionWidget(
              text: "Has the business owner or management any skills to manage export transactions?",
              radioButton: 3,
              personalities: 4,
            ),
            QuestionWidget(
              text: 'How willing and ready is the business owner or management to fund export transactions?',
              radioButton: 4,
              personalities: 3,
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: currentPage / totalPages,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.greenAccent),
            ),
            SizedBox(height: 20),
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
                    Icons.chevron_left,
                    color: Colors.greenAccent,
                    size: 24.0,
                  ),
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Store the response before navigating to the next page
                    ResponseManager.responses[currentPage - 1] = 1; // Assuming 1 is the response, modify as needed

                    if (currentPage < totalPages) {
                      setState(() {
                        currentPage++;
                      });
                    } else {
                      // Navigate to the next page or perform any other action when all pages are completed
                     // Navigator.of(context).pushNamed('/secondPageRoute');
                     // Navigator.(context) => SecondQuestionsView();
                    () => _navigateToSecondPage(context);
                  }
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
