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
          'EXPORT READINESS ASSESSMENT',
          style: TextStyle(
              fontSize: 20,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold),
        ),
        content: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.greenAccent),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              CupertinoIcons.clear,
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
