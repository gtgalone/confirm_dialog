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
          child: TextButton(
            child: Text('Confirm Dialog'),
            onPressed: () async {
              if (await confirm(
                context,
                title: Text('Confirm'),
                content: Text('Would you like to remove?'),
                textOK: Text('Yes'),
                textCancel: Text('No'),
              )) {
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
