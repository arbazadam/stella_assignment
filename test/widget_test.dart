import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stella_assignment/main.dart';
import 'package:stella_assignment/presentation/widgets/getting_there_widget.dart';
import 'package:stella_assignment/presentation/widgets/overview_widget.dart';
import 'package:stella_assignment/presentation/widgets/parent_container_widget.dart';
import 'package:stella_assignment/presentation/widgets/reservation_widget.dart';

void main() {
  group('widget test', () {
    testWidgets('Main UI Test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(ParentApp());
      expect(find.byType(ParentWidget), findsOneWidget);
      expect(find.byType(OverViewWidget), findsOneWidget);
      expect(find.byType(GetThereWidget), findsOneWidget);
    });
  });
}
