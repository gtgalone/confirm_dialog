# Confirm Dialog

[![pub package](https://img.shields.io/pub/v/confirm_dialog.svg)](https://pub.dartlang.org/packages/confirm_dialog)

Confirm Dialog Widget for Flutter(JS-LIKE).
https://pub.dev/packages/confirm_dialog

## Installation

### Add pubspec.yaml
``` yaml
dependencies:
  confirm_dialog: ^1.0.0
```
---
## Usage

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
            onPressed: () async {
              if (await confirm(context)) {
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
```

### Custom Message
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
```
---
## Recommend Libraries

- [Prompt Dialog](https://github.com/gtgalone/prompt_dialog) - Prompt Dialog Widget for Flutter(JS-LIKE).
- [Alert Dialog](https://github.com/gtgalone/alert_dialog) - Alert Dialog Widget for Flutter(JS-LIKE).
- [Currency Text Input Formatter](https://github.com/gtgalone/currency_text_input_formatter) - Currency Text Input Formatter for Flutter.

## Maintainer

- [Jehun Seem](https://github.com/gtgalone)

## License

MIT
