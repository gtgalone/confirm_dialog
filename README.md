# Confirm Dialog

[![pub package](https://img.shields.io/pub/v/confirm_dialog.svg)](https://pub.dartlang.org/packages/confirm_dialog)

Confirm Dialog Widget for Flutter.

## Installation

### Add package.yaml
``` yaml
dependencies:
  confirm_dialog: lastest_version
```
### Install Package
```
$ flutter pub get
```
---
## Example

### Basic
``` dart
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
            onPressed: () => showDialog(
              context: context,
              builder: (_) => ConfirmDialog(
                onPressedOK: () => print('pressedOK'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

### Custom Message
``` dart
  ConfirmDialog(
    onPressedOK: () => print('pressedOK'),
    message: 'Would you like to remove?',
    textOK: 'Yes',
    textCancel: 'No',
  )
```
