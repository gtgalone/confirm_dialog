import 'package:flutter/material.dart';

/// The `title` argument is used to title of alert dialog.
/// The `content` argument is used to content of alert dialog.
/// The `textOK` argument is used to text for 'OK' Button of alert dialog.
/// The `textCancel` argument is used to text for 'Cancel' Button of alert dialog.
///
/// Returns a [Future<bool>].
Future<bool> confirm(
  BuildContext context, {
  Widget? title,
  Widget? content,
  Widget? textOK,
  Widget? textCancel,
}) async {
  final bool? isConfirm = await showDialog<bool>(
    context: context,
    builder: (_) => WillPopScope(
      child: AlertDialog(
        title: title,
        content: (content != null) ? content : Text('Are you sure continue?'),
        actions: <Widget>[
          TextButton(
            child: textCancel != null ? textCancel : Text('Cancel'),
            onPressed: () => Navigator.pop(context, false),
          ),
          TextButton(
            child: textOK != null ? textOK : Text('OK'),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
      onWillPop: () async {
        Navigator.pop(context, false);
        return true;
      },
    ),
  );

  return (isConfirm != null) ? isConfirm : false;
}
