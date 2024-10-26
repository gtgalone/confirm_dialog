import 'package:flutter/material.dart';

/// The `title` argument is used to title of alert dialog.
/// The `content` argument is used to content of alert dialog.
/// The `textOK` argument is used to text for 'OK' Button of alert dialog.
/// The `textCancel` argument is used to text for 'Cancel' Button of alert dialog.
/// The `canPop` argument is `canPop` of PopScope.
/// The `onPopInvokedWithResult` argument is `onPopInvokedWithResult` of PopScope.
///
/// Returns a [Future<bool>].
Future<bool> confirm(
  BuildContext context, {
  Widget? title,
  Widget? content,
  Widget? textOK,
  Widget? textCancel,
  bool canPop = false,
  void Function(bool, dynamic)? onPopInvokedWithResult,
}) async {
  final bool? isConfirm = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) => PopScope(
      child: AlertDialog(
        title: title,
        content: SingleChildScrollView(
          child: content ?? const Text('Are you sure continue?'),
        ),
        actions: <Widget>[
          TextButton(
            child: textCancel ??
                Text(MaterialLocalizations.of(context).cancelButtonLabel),
            onPressed: () => Navigator.pop(context, false),
          ),
          TextButton(
            child:
                textOK ?? Text(MaterialLocalizations.of(context).okButtonLabel),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
      canPop: canPop,
      onPopInvokedWithResult: onPopInvokedWithResult,
    ),
  );
  return isConfirm ?? false;
}
