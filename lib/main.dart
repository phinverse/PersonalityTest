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
      routes: {secondPageRoute: (context) => SecondPageView()},
    ),
  );
}

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Center(child: Text('16 Personality Test')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to our project',
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
            Text("choose wisely :')",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20),
            Text('Get your personality type by',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                )),
            Text('simply answering few questions',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPageView(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              child: Icon(
                CupertinoIcons.arrow_right_circle_fill,
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
