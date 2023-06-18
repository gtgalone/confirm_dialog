# Confirm Dialog

[![pub package](https://img.shields.io/pub/v/confirm_dialog.svg)](https://pub.dartlang.org/packages/confirm_dialog)

Confirm Dialog Widget for Flutter(JS-LIKE).
https://pub.dev/packages/confirm_dialog

## Installation

### Add pubspec.yaml
``` yaml
dependencies:
  confirm_dialog: ^1.0.2
```
---
## Usage

### Basic
``` dart
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Confirm Dialog'),
          onPressed: () async {
            if (await confirm(context)) {
              return print('pressedOK');
            }
            return print('pressedCancel');
          },
        ),
      ),
    );
  }
}
```

### Custom Message
``` dart
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Confirm Dialog'),
          onPressed: () async {
            if (await confirm(
              context,
              title: const Text('Confirm'),
              content: const Text('Would you like to remove?'),
              textOK: const Text('Yes'),
              textCancel: const Text('No'),
            )) {
              return print('pressedOK');
            }
            return print('pressedCancel');
          },
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
