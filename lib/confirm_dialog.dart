import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    Key key,
    @required this.onPressedOK,
    this.onPressedCancel,
    this.message = 'Are you sure continue?',
    this.textOK = 'OK',
    this.textCancel = 'Cancel',
  }) : super(key: key);

  final VoidCallback onPressedOK;
  final VoidCallback onPressedCancel;
  final String message;
  final String textOK;
  final String textCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(message),
      actions: <Widget>[
        FlatButton(
            child: Text(textCancel),
            onPressed: () {
              if (onPressedCancel == null) return Navigator.of(context).pop();
              return onPressedCancel();
            }),
        FlatButton(child: Text(textOK), onPressed: onPressedOK),
      ],
    );
  }
}
