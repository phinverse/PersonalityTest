import 'package:flutter/material.dart';

class ResponseManager {
  static List<Map<String, dynamic>> responses = List.generate(
    5,
        (index) => {
      'question': '',
      'response': null,
    },
  );

  static String? name;
  static String? email;
  static String? phoneNumber;
}

class QuestionPage extends StatefulWidget {
  final String pageTitle;
  final String pageInfo;
  final List<String> questions;

  const QuestionPage({
    Key? key,
    required this.pageTitle,
    required this.pageInfo,
    required this.questions,
  }) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int currentPage = 0;
  final int totalPages = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              widget.pageInfo,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            for (int i = 0; i < widget.questions.length; i++)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${i + 1}. ${widget.questions[i]}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (int j = 1; j <= 5; j++)
                    RadioListTile<int>(
                      title: Text('Option $j'),
                      value: j,
                      groupValue: ResponseManager.responses[currentPage]['response'],
                      onChanged: (value) {
                        setState(() {
                          ResponseManager.responses[currentPage]['question'] = widget.questions[i];
                          ResponseManager.responses[currentPage]['response'] = value;
                        });
                      },
                    ),
                  SizedBox(height: 10),
                ],
              ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              value: (currentPage + 1) / totalPages,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: currentPage > 0
                      ? () {
                    setState(() {
                      currentPage--;
                    });
                  }
                      : null,
                  child: Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: currentPage < totalPages - 1
                      ? () {
                    setState(() {
                      currentPage++;
                    });
                  }
                      : null,
                  child: Text(currentPage == totalPages - 1 ? 'Submit' : 'Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
