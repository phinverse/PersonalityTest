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
          'Your personality type',
          style: TextStyle(fontSize: 24, color: Colors.greenAccent),
        ),
        content: Text(
          text,
          style: const TextStyle(fontSize: 22, color: Colors.greenAccent),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              CupertinoIcons.hand_thumbsup,
              color: Colors.redAccent,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        ],
      );
    },
  );
}
