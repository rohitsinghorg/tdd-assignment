// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_assignment/utils/string_calculator.dart';

void main() {
  test('Empty string returns 0', () {
    expect(StringCalculator.add(""), 0);
  });

  /// Test case to handle comma-separated numbers
  test('Multiple numbers returns its sum', () {
    expect(StringCalculator.add("1,2,3,4"), 10);
  });

  /// Test case to handle new line delimiters
  test('New lines and commas are valid delimiters', () {
    expect(StringCalculator.add("1\n2,3"), 6);
  });

  /// Test case to handle custom delimiter
  test('Supports custom delimiter', () {
    expect(StringCalculator.add("//;\n1;2"), 3);
  });
}
