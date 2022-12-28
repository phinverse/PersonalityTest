// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:psycho/utilities/show_personality_dialogue.dart';

class SecondPageView extends StatefulWidget {
  @override
  _SecondPageViewState createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  var personalities = [0, 0, 0, 0, 0, 0, 0];
  final _radioButton = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  String personalityType = '';
  String _calculatePersonalityType(
      int extraversion, int intuition, int feeling, int judging) {
    // Calculate the personality type based on the input values
    if (personalities[0] >= 2) {
      personalityType += 'E';
    } else {
      personalityType += 'I';
    }

    if (personalities[2] >= 2) {
      personalityType += 'S';
    } else {
      personalityType += 'N';
    }

    if (personalities[4] >= 2) {
      personalityType += 'T';
    } else {
      personalityType += 'F';
    }

    if (personalities[6] >= 2) {
      personalityType += 'J';
    } else {
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
        title: Text('Go back!'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                const Text('You enjoy spending time alone',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[0],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] -= 2;
                            _radioButton[0] = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[0],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] = personalities[0];
                            _radioButton[0] = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[0],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] += 2;
                            _radioButton[0] = 3;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You tend to make decisions quickly',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[1],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] += 2;
                            _radioButton[1] = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[1],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] = personalities[4];
                            _radioButton[1] = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[1],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] -= 2;
                            _radioButton[1] = 3;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You are a naturally curious person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[2],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] -= 2;
                            _radioButton[2] = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[2],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] = personalities[6];
                            _radioButton[2] = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[2],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] += 2;
                            _radioButton[2] = 3;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You enjoy trying new things and ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                const Text('Stepping outside of your comfort zone',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[4],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] -= 2;
                            _radioButton[4] = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[4],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] = personalities[6];
                            _radioButton[4] = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[4],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] += 2;
                            _radioButton[4] = 3;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You prefer structured over',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                const Text('unstructured activities',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[5],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] += 2;
                            _radioButton[5] = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[5],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] = personalities[6];
                            _radioButton[5] = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[5],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] -= 2;
                            _radioButton[5] = 3;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You are generally an optimistic person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[6],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] -= 2;
                            _radioButton[6] = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[6],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] = personalities[4];
                            _radioButton[6] = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[6],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] += 2;
                            _radioButton[6] = 3;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You enjoy being the center of attention',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[7],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] += 2;
                            _radioButton[7] = 1;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[7],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] = personalities[0];
                            _radioButton[7] = 2;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[7],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] -= 2;
                            _radioButton[7] = 3;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You consider yourself',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                const Text('a highly organized person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[8],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] += 2;
                            _radioButton[8] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[8],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] = personalities[6];
                            _radioButton[8] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[8],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] -= 2;
                            _radioButton[8] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You enjoy taking on leadership roles',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[9],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] += 2;
                            _radioButton[9] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[9],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] = personalities[0];
                            _radioButton[9] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[9],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] -= 2;
                            _radioButton[9] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You are a patient person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[10],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] -= 2;
                            _radioButton[10] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[10],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] = personalities[6];
                            _radioButton[10] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[10],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] += 2;
                            _radioButton[10] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You enjoy meeting',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                const Text('new people and socializing',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[11],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] += 2;
                            _radioButton[11] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[11],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] = personalities[0];
                            _radioButton[11] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[11],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] -= 2;
                            _radioButton[11] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You tend to be a private person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[12],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] -= 2;
                            _radioButton[12] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[12],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] = personalities[0];
                            _radioButton[12] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[12],
                        onChanged: (var value) {
                          setState(() {
                            personalities[0] += 2;
                            _radioButton[12] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You a logical and analytical thinker',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[13],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] += 2;
                            _radioButton[13] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[13],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] = personalities[4];
                            _radioButton[13] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[13],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] -= 2;
                            _radioButton[13] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You are a creative person',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[14],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] -= 2;
                            _radioButton[14] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[14],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] = personalities[6];
                            _radioButton[14] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[14],
                        onChanged: (var value) {
                          setState(() {
                            personalities[6] += 2;
                            _radioButton[14] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You enjoy physical activities and sports',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[15],
                        onChanged: (var value) {
                          setState(() {
                            personalities[2] += 2;
                            _radioButton[15] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[15],
                        onChanged: (var value) {
                          setState(() {
                            personalities[2] = personalities[2];
                            _radioButton[15] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[15],
                        onChanged: (var value) {
                          setState(() {
                            personalities[2] -= 2;
                            _radioButton[15] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Text('You generally prioritize your own',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                const Text('needs over the needs of others',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    )),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.8, color: Colors.white),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text('Accurate',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                          )),
                      Radio(
                        value: 1,
                        groupValue: _radioButton[3],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] -= 2;
                            _radioButton[3] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 2,
                        groupValue: _radioButton[3],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] = personalities[4];
                            _radioButton[3] = value ??= 0;
                          });
                        },
                      ),
                      Radio(
                        value: 3,
                        groupValue: _radioButton[3],
                        onChanged: (var value) {
                          setState(() {
                            personalities[4] += 2;
                            _radioButton[3] = value ??= 0;
                          });
                        },
                      ),
                      const Text('Inaccurate',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.0,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            personalityType = '';

                            _calculatePersonalityType(
                                personalities[0],
                                personalities[2],
                                personalities[4],
                                personalities[6]);

                            showPersonalityDialogue(context, personalityType,
                                Colors.black, Colors.grey[900]);
                          });
                        },
                        child: Icon(
                          CupertinoIcons.check_mark_circled_solid,
                          color: Colors.white,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            textStyle: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
