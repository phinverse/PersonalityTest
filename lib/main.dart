// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constrants/routes.dart';
import 'views/views.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageView(),
      theme: ThemeData(
          fontFamily: 'Roboto',
          brightness: Brightness.dark,
          unselectedWidgetColor: Colors.white),
      routes: {
        firstPageRoute: (context) => FirstQuestionsView(),
        secondPageRoute: (context) => SecondQuestionsView(),
        thirdPageRoute: (context) => ThirdQuestionsView(),
        homePageRoute: (context) => HomePageView()
      },
    ),
  );
}

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(
            child: Text(
          '16 Personalities Test',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Greetings, fellow human.',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                )),
            SizedBox(height: 20),
            Text('So much to choose from',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                )),
            Text('all guilt-free with zero calories!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20),
            Text('Take the 5-min Survey Now',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  firstPageRoute,
                  (route) => true,
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              child: Icon(
                CupertinoIcons.chevron_forward,
                color: Colors.white,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
