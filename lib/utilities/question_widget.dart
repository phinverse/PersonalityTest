import 'package:flutter/material.dart';
import 'package:export_readiness/constrants/globals.dart';

class QuestionWidget extends StatefulWidget {
  final String text;

  int radioButton;
  int personalities;
  final String text2;
  QuestionWidget({
    super.key,
    required this.text,
    required this.radioButton,
    required this.personalities,
    this.text2 = '',
  });

  @override
  QuestionViewState createState() => QuestionViewState();
}

class QuestionViewState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.8, color: Colors.white),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          const SizedBox(height: 10),
          Text(widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              )),
          if (widget.text2 != '')
            Text(widget.text2,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Transform.scale(
                scale: 1.0,
                child: Column(
                  children: [ Radio(
                    value: 1,
                    groupValue: radioButton[widget.radioButton],
                    onChanged: (var value) {
                    setState(() {
                      personalities[widget.personalities] += 1;

                      radioButton[widget.radioButton] = value ?? 1;
                    });
                    }
                    ),
                    const Text('Very Low',
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 174, 111),
                      fontSize: 12.0,
                    )), 
                  ]
                ),
              ),
              
              Column(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: radioButton[widget.radioButton],
                      onChanged: (var value) {
                        setState(() {
                          personalities[widget.personalities] =
                              personalities[widget.personalities];
                          radioButton[widget.radioButton] = value ?? 2;
                        });
                      },
                    ),
                    const Text('Low',
                    style: TextStyle(
                      color: Color.fromARGB(255, 192, 151, 117),
                      fontSize: 12.0,
                    )), 
                  ]
              ),
              Column(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: radioButton[widget.radioButton],
                      onChanged: (var value) {
                        setState(() {
                          personalities[widget.personalities] =
                              personalities[widget.personalities];
                          radioButton[widget.radioButton] = value ?? 2;
                        });
                      },
                    ),
                    const Text('Indifferent',
                    style: TextStyle(
                      color: Color.fromARGB(255, 155, 155, 155),
                      fontSize: 12.0,
                    )), 
                  ]
              ),
             
                    Column(
                      children: [
                        Radio(
                        value: 4,
                        groupValue: radioButton[widget.radioButton],
                        onChanged: (var value) {
                          setState(() {
                            personalities[widget.personalities] =
                                personalities[widget.personalities];
                            radioButton[widget.radioButton] = value ?? 2;
                          });
                        },
                      ),
                      const Text('High',
                      style: TextStyle(
                        color: Color.fromARGB(255, 86, 163, 84),
                        fontSize: 12.0,
                      )), 
                  ]
                  ),
              Column(
                      children: [
                         Radio(
                  value: 5,
                  groupValue: radioButton[widget.radioButton],
                  onChanged: (var value) {
                    setState(() {
                      personalities[widget.personalities] -= 1;
                      radioButton[widget.radioButton] = value ?? 3;
                    });
                  },
                ),
                const Text('Very High',
                  style: TextStyle(
                    color: Color.fromARGB(255, 115, 255, 150),
                    fontSize: 12.0,
                  )),
                      ]                      
              ),
              
            ],
          ),
          
          const SizedBox(height: 10),
          
        ],
      ),
    );
  }
}
