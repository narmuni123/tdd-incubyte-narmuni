import 'package:tdd_incubyte_narmuni/src/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('returns 0 for empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });
}
