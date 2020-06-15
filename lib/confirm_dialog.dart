import 'package:flutter/material.dart';

Future<bool> confirm(
  BuildContext context,
  {
    String message: 'Are you sure continue?',
    String textOK: 'OK',
    String textCancel: 'Cancel'
  }
) => showDialog(
  context: context,
  builder: (_) => AlertDialog(
    title: Text(message),
    actions: <Widget>[
      FlatButton(child: Text(textCancel), onPressed: () => Navigator.pop(context, false)),
      FlatButton(child: Text(textOK), onPressed: () => Navigator.pop(context, true)),
    ],
  ),
);
