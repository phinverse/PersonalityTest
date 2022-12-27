// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: PersonalityTest(),
      theme: ThemeData(
          fontFamily: 'Roboto',
          brightness: Brightness.dark,
          unselectedWidgetColor: Colors.white),
    ),
  );
}

class PersonalityTest extends StatefulWidget {
  @override
  _PersonalityTestState createState() => _PersonalityTestState();
}

class _PersonalityTestState extends State<PersonalityTest> {
  int _extraversion = 0;
  int _intuition = 0;
  int _feeling = 0;
  int _judging = 0;
  String _personalityType = '';
  String personalityType = '';
  String _calculatePersonalityType(
      int extraversion, int intuition, int feeling, int judging) {
    // Calculate the personality type based on the input values
    if (extraversion == 1) {
      personalityType += 'E';
    } else if (extraversion == 2) {
      personalityType += 'I';
    }

    if (intuition == 1) {
      personalityType += 'S';
    } else if (intuition == 2) {
      personalityType += 'N';
    }

    if (feeling == 1) {
      personalityType += 'T';
    } else if (feeling == 2) {
      personalityType += 'F';
    }

    if (judging == 1) {
      personalityType += 'J';
    } else if (judging == 2) {
      personalityType += 'P';
    }
    return personalityType;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Center(child: Text('16 Personality Test')),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Text('Welcome!',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: const [
                    Text('So much to choose from',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        )),
                    Text('choose wisely!',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              const Text('Extraversion or Introversion',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 22.0,
                  )),
              Row(
                children: [
                  const Text('Extraversion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 1,
                    groupValue: _extraversion,
                    onChanged: (int? value) {
                      setState(() {
                        _extraversion = value?.toInt() ?? 0;
                      });
                    },
                  ),
                  const Text('Introversion',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 2,
                    groupValue: _extraversion,
                    onChanged: (int? value) {
                      setState(() {
                        _extraversion = value?.toInt() ?? 0;
                      });
                    },
                  ),
                ],
              ),
              const Text('Sensation or Intuition',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 22.0,
                  )),
              Row(
                children: [
                  const Text('Sensation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 1,
                    groupValue: _intuition,
                    onChanged: (int? value) {
                      setState(() {
                        _intuition = value?.toInt() ?? 0;
                      });
                    },
                  ),
                  const Text('Intuition',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 2,
                    groupValue: _intuition,
                    onChanged: (int? value) {
                      setState(() {
                        _intuition = value?.toInt() ?? 0;
                      });
                    },
                  ),
                ],
              ),
              const Text('Thinking or Feeling',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 22.0,
                  )),
              Row(
                children: [
                  const Text('Thinking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 1,
                    groupValue: _feeling,
                    onChanged: (int? value) {
                      setState(() {
                        _feeling = value?.toInt() ?? 0;
                      });
                    },
                  ),
                  const Text('Feeling',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 2,
                    groupValue: _feeling,
                    onChanged: (int? value) {
                      setState(() {
                        _feeling = value?.toInt() ?? 0;
                      });
                    },
                  ),
                ],
              ),
              const Text('Judging or Perceiving',
                  style: TextStyle(
                    color: Colors.cyan,
                    fontSize: 22.0,
                  )),
              Row(
                children: [
                  const Text('Judging',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 1,
                    groupValue: _judging,
                    onChanged: (int? value) {
                      setState(() {
                        _judging = value?.toInt() ?? 0;
                      });
                    },
                  ),
                  const Text('Perceiving',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  Radio(
                    value: 2,
                    groupValue: _judging,
                    onChanged: (int? value) {
                      setState(() {
                        _judging = value?.toInt() ?? 0;
                      });
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _personalityType = '';
                          _personalityType = _calculatePersonalityType(
                              _extraversion, _intuition, _feeling, _judging);
                        });
                      },
                      child: const Text("DON'T CLICK ME :')"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          textStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Text('Your personality type is ${_personalityType}',
                      style: const TextStyle(
                          color: Colors.orange,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
