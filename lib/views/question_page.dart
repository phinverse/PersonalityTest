// question_page.dart
import 'package:flutter/material.dart';
import 'package:export_readiness/views/question_util.dart'; // Import the utility class
import 'package:http/http.dart' as http;

class Question {
  final String text;
  final List<String> options;

  Question({required this.text, required this.options});
}

class QuestionWidget extends StatefulWidget {
  final Question question;
  final Function(String) onOptionSelected;

  QuestionWidget({required this.question, required this.onOptionSelected});

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.indigo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question.text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 12),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (int i = 0; i < widget.question.options.length; i++)
                  GestureDetector(
                    onTap: () {
                      // Handle the selected value
                      setState(() {
                        selectedOption = widget.question.options[i];
                      });
                      widget.onOptionSelected(widget.question.options[i]);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: selectedOption == widget.question.options[i] ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Text(
                        widget.question.options[i],
                        style: TextStyle(
                          color: selectedOption == widget.question.options[i] ? Colors.blue : Colors.white,
                        ),
                      ),
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

class QuestionPage extends StatefulWidget {
  final String pageTitle;
  final String pageInfo;
  final int? nextPage;
  final List<Map<String, String>> pageData;

  QuestionPage({
    required this.pageTitle,
    required this.pageInfo,
    this.nextPage,
    required this.pageData,
  });

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<Question> questions = [];
  List<Map<String, dynamic>> responses = [];

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the questions list using the utility class
    questions = QuestionUtil.getQuestionsForPage(widget.pageTitle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pageTitle),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.pageInfo,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            for (int i = 0; i < questions.length; i++)
              QuestionWidget(
                question: questions[i],
                onOptionSelected: (selectedOption) {
                  // Handle the selected value
                  setState(() {
                    responses.add({
                      'question': questions[i].text,
                      'response': selectedOption,
                    });
                  });
                },
              ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: widget.nextPage != null
                      ? () {
                    // Check if all questions are answered before proceeding
                    if (responses.length >= questions.length) {
                      final int nextPageIndex = widget.nextPage! - 1;

                      if (nextPageIndex < widget.pageData.length) {
                        final Map<String, String> currentPageData = widget.pageData[nextPageIndex];
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return QuestionPage(
                                pageTitle: currentPageData['title']!,
                                pageInfo: currentPageData['info']!,
                                nextPage: widget.nextPage! < 15 ? widget.nextPage! + 1 : null,
                                pageData: widget.pageData,
                              );
                            },
                          ),
                        );
                      } else {
                        print("Error: nextPageIndex is out of range.");
                      }
                    } else {
                      // Display an alert or snackbar indicating that all questions must be answered
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please answer all questions before proceeding.'),
                        ),
                      );
                    }
                  }
                      : null,
                  child: Text(widget.nextPage != null ? 'Next' : 'Submit'),
                ),
              ],
            ),
            // Display form for name, email, and phone
            if (widget.nextPage == null)
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Enter your information:',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  // Add form fields and submit button
                  // For simplicity, I'm using basic text fields
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    controller: phoneController,
                    decoration: InputDecoration(labelText: 'Phone'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Check if all questions are answered before submitting
                      print(responses.length);
                      print(responses);
                      print(questions.length);
                      if (responses.length >= questions.length) {
                        // Submit responses and user information to API
                        submitDataToAPI(
                          name: nameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                        );
                        // Display a success message or navigate to a confirmation page
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmationPage(),
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Form submitted successfully.'),
                          ),
                        );
                      } else {
                        // Display an alert or snackbar indicating that all questions must be answered
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Please answer all questions before submitting.'),
                          ),
                        );
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  void submitDataToAPI({required String name, required String email, required String phone}) async {
    //void submitDataToAPI({required String name, required String email, required String phone}) {
      // Basic structure for submitting data to an API
      // Replace this with your API endpoint and payload
      // Use a package like 'http' for making HTTP requests
      // https://pub.dev/packages/http

    final Uri apiUrl = Uri.parse('http://www.globaltradecollege.com/eras/api/assessment');

    final Map<String, dynamic> postData = {
        'responses': responses,
        'name': name,
        'email': email,
        'phone': phone,
      };

      try {
        final http.Response response = await http.post(
          apiUrl,
          body: postData,
        );

        // Handle the API response
        print('API Response: ${response.statusCode} ${response.body}');
      }
      catch (error) {
        // Handle errors
        print('API Error: $error');
      }
    }
  }

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Completed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            SizedBox(height: 20),
            Text(
              'Congratulations!. You have completed the Export Readiness Assessment.',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 100,
            ),
            Text(
              'Your assessment score and recommendations will be sent to you by email. Thank you.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _showCloseConfirmationDialog(context);
                },
                child: Text('Close'),
              ),
          ],
        ),
      ),
    );
  }
}

Future<void> _showCloseConfirmationDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Confirmation'),
        content: Text('Do you want to close Export Readiness Assessment Test?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false); // Dismiss the dialog
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true); // Close the app
            },
            child: Text('Close'),
          ),
        ],
      );
    },
  ).then((result) {
    if (result == true) {
      Navigator.popUntil(context, (route) => route.isFirst); // Close the app
    }
  });
}