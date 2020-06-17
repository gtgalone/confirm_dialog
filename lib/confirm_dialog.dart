import 'package:flutter/material.dart';

/// The `title` argument is used to title of alert dialog.
/// The `content` argument is used to content of alert dialog.
/// The `textOK` argument is used to text for 'OK' Button of alert dialog.
/// The `textCancel` argument is used to text for 'Cancel' Button of alert dialog.
///
/// Returns a [Future<bool>].
Future<bool> confirm(
  BuildContext context,
  {
    Widget title,
    Widget content,
    String textOK: 'OK',
    String textCancel: 'Cancel',
  }
) => showDialog(
  context: context,
  builder: (_) => WillPopScope(
    child: AlertDialog(
      title: (title != null) ? title : null,
      content: (content != null) ? content : Text('Are you sure continue?'),
      actions: <Widget>[
        FlatButton(child: Text(textCancel), onPressed: () => Navigator.pop(context, false)),
        FlatButton(child: Text(textOK), onPressed: () => Navigator.pop(context, true)),
      ],
    ),
    onWillPop: () { Navigator.pop(context, false); return; },
  ),
);
