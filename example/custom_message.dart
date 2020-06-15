import 'package:flutter/material.dart';

import 'package:confirm_dialog/confirm_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: FlatButton(
            child: Text('Confirm Dialog'),
            onPressed: () async {
              if (await confirm(context, message: 'Would you like to remove?', textOK: 'Yes', textCancel: 'No')) {
                return print('pressedOK');
              }
              return print('pressedCancel');
            },
          ),
        ),
      ),
    );
  }
}
