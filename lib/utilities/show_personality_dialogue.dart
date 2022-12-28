import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showPersonalityDialogue(
  BuildContext context,
  String text,
  Color? backgroundColor,
  Color? shadowColor,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: backgroundColor,
        elevation: 5,
        title: const Text(
          'Your personality type is',
          style: TextStyle(fontSize: 20, color: Colors.green),
        ),
        content: Text(
          text,
          style: const TextStyle(fontSize: 22, color: Colors.green),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              CupertinoIcons.hand_thumbsup,
              color: Colors.red,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        ],
      );
    },
  );
}
