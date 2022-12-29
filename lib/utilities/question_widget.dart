import 'package:flutter/material.dart';
import 'package:psycho/constrants/globals.dart';

class QuestionWidget extends StatefulWidget {
  final String text;

  int radioButton;
  int personalities;
  final String text2;
  QuestionWidget({
    required this.text,
    required this.radioButton,
    required this.personalities,
    this.text2 = '',
  });

  @override
  _QuestionViewState createState() => _QuestionViewState();
}

class _QuestionViewState extends State<QuestionWidget> {
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
                fontSize: 18.0,
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
              const Text('Accurate',
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20.0,
                  )),
              Transform.scale(
                scale: 1.2,
                child: Radio(
                  value: 1,
                  groupValue: radioButton[widget.radioButton],
                  onChanged: (var value) {
                    setState(() {
                      personalities[widget.personalities] += 1;

                      radioButton[widget.radioButton] = value ?? 1;
                    });
                  },
                ),
              ),
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
              Transform.scale(
                scale: 1.2,
                child: Radio(
                  value: 3,
                  groupValue: radioButton[widget.radioButton],
                  onChanged: (var value) {
                    setState(() {
                      personalities[widget.personalities] -= 1;
                      radioButton[widget.radioButton] = value ?? 3;
                    });
                  },
                ),
              ),
              const Text('Inaccurate',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20.0,
                  )),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
