import 'package:flutter_test/flutter_test.dart';

import 'package:confirm_dialog/confirm_dialog.dart';

void main() {
  group(ConfirmDialog, () {
    testWidgets('letters drive numbers - fling', (tester) async {
      await tester.pumpWidget(ConfirmDialog(onPressedOK: () {}));
    });
  });
}
