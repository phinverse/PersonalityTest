// main.dart
import 'package:flutter/material.dart';
import 'package:export_readiness/views/question_page.dart';
import 'package:export_readiness/views/question_util.dart'; // Import the utility class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> pageData = [
    {
      'title': 'Promoters',
      'info': 'These sets of questions are designed to assess the readiness of the business in terms of the interest and commitment of the owners.',
    },
    {
      'title': 'Products',
      'info': 'These sets of questions are designed to assess the readiness of the business in terms of the suitability of the products for consumers in the export market.',
    },
    {
      'title': 'Pricing',
      'info': 'These sets of questions are designed to assess the readiness of the business in terms of the ability to compete in the export market.',
    },
    {
      'title': 'Predisposition',
      'info': 'These sets of questions are designed to assess the readiness of the business in terms of foreign orientation of the staff.',
    },
    {
      'title': 'Purpose',
      'info': 'These sets of questions are designed to assess the readiness the business in terms of the reason for going to sell abroad.',
    },
    {
      'title': 'Payment',
      'info': '',
    },
    {
      'title': 'Production',
      'info': '',
    },
    {
      'title': 'Positioning',
      'info': '',
    },
    {
      'title': 'Proficiency',
      'info': '',
    },
    {
      'title': 'People',
      'info': '',
    },
    {
      'title': 'Paperwork',
      'info': '',
    },
    {
      'title': 'Potentials',
      'info': '',
    },
    {
      'title': 'Promotion',
      'info': '',
    },
    {
      'title': 'Purchasers',
      'info': '',
    },
    {
      'title': 'Partnership',
      'info': '',
    },
    // Add similar entries for other pages
  ];

  void _navigateToPage(BuildContext context, int pageIndex) {
    final Map<String, String> currentPageData = pageData[pageIndex - 1];
    List<Question> questions = QuestionUtil.getQuestionsForPage(currentPageData['title']!);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return QuestionPage(
            pageTitle: currentPageData['title']!,
            pageInfo: currentPageData['info']!,
            nextPage: pageIndex < pageData.length ? pageIndex + 1 : null,
            pageData: pageData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Export Readiness ',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Assessment!',
              style: TextStyle(
                fontSize: 28,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/vrilustration.png'),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => _navigateToPage(context, 1 ),
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

