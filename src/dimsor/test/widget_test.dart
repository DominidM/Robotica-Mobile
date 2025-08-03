import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dimsor/main.dart';

void main() {
  testWidgets('Home screen displays DIMSOR and cámara tiempo real', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const DimsorApp());

    expect(find.text('DIMSOR'), findsOneWidget);
    expect(find.text('cámara tiempo real'), findsOneWidget);
  });
}
