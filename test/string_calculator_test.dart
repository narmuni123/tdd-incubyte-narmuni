import 'package:tdd_incubyte_narmuni/src/string_calculator.dart';
import 'package:test/test.dart';

// void main() {

  // first test case
  // test('returns 0 for empty string', () {
  //   final calculator = StringCalculator();
  //   expect(calculator.add(''), 0);
  // });

  // second test case
  // test('returns the number itself when a single number is provided', () {
  //   final calculator = StringCalculator();
  //   expect(calculator.add('5'), 5);
  //   expect(calculator.add('123'), 123);
  // });

  // third test case
  // test('returns sum of two comma-separated numbers', () {
  //   final calculator = StringCalculator();
  //   expect(calculator.add('1,2'), 3);
  //   expect(calculator.add('10,20'), 30);
  // });

  // fourth test case
  // test('returns sum of multiple comma-separated numbers', () {
  //   final calculator = StringCalculator();
  //   expect(calculator.add('1,2,3,4'), 10);
  //   expect(calculator.add('5,5,5,5,5'), 25);
  // });


  // fifth test case
  // test('supports new line as delimiter', () {
  //   final calculator = StringCalculator();
  //   expect(calculator.add('1\n2,3'), 6);
  //   expect(calculator.add('4\n5\n6'), 15);
  // });

  // sixth test case
  // test('supports custom delimiter', () {
  //   final calculator = StringCalculator();
  //   expect(calculator.add('//;\n1;2;3'), 6);
  //   expect(calculator.add('//|\n4|5|6'), 15);
  // });

  // seventh test case
  // test('throws exception for negative numbers', () {
  //   final calculator = StringCalculator();
  //   expect(
  //           () => calculator.add('1,-2,3,-4'),
  //       throwsA(predicate((e) => e.toString().contains('negative numbers not allowed -2,-4')))
  //   );
  // });
// }

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  test('returns 0 for empty string', () {
    expect(calculator.add(''), 0);
  });

  test('returns the number itself when a single number is provided', () {
    expect(calculator.add('5'), 5);
    expect(calculator.add('123'), 123);
  });

  test('returns sum of two comma-separated numbers', () {
    expect(calculator.add('1,2'), 3);
    expect(calculator.add('10,20'), 30);
  });

  test('returns sum of multiple comma-separated numbers', () {
    expect(calculator.add('1,2,3,4'), 10);
    expect(calculator.add('5,5,5,5,5'), 25);
  });

  test('supports new line as delimiter', () {
    expect(calculator.add('1\n2,3'), 6);
    expect(calculator.add('4\n5\n6'), 15);
  });

  test('supports custom delimiter', () {
    expect(calculator.add('//;\n1;2;3'), 6);
    expect(calculator.add('//|\n4|5|6'), 15);
  });

  test('throws exception for negative numbers', () {
    expect(
            () => calculator.add('1,-2,3,-4'),
        throwsA(predicate(
                (e) => e.toString().contains('negative numbers not allowed -2,-4'))));
  });
}

