import 'package:flutter/material.dart';

/// The `message` argument is used to title of dialog.
/// The `textOK` argument is used to text for 'OK' Button of dialog.
/// The `textCancel` argument is used to text for 'Cancel' Button of dialog.
///
/// Returns a [Future<bool>].
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
