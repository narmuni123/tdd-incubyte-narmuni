// class StringCalculator {
/// first test case
// int add(String numbers) {
//   return 0;
// }

/// second test case && third test case && fourth test case
// int add(String numbers) {
//   if (numbers.isEmpty) return 0;
//   final parts = numbers.split(',');
//   if (parts.length == 1) return int.parse(numbers);
//   return parts.map(int.parse).reduce((a, b) => a + b);
// }

/// fifth test case
// int add(String numbers) {
//   final parts = numbers.split(RegExp('[,\n]'));
//   return parts.map(int.parse).reduce((a, b) => a + b);
// }

/// sixth test case
// int add(String numbers) {
//   String delimiter = ',';
//   if (numbers.startsWith('//')) {
//     final delimiterEndIndex = numbers.indexOf('\n');
//     delimiter = numbers.substring(2, delimiterEndIndex);
//     numbers = numbers.substring(delimiterEndIndex + 1);
//   }
//   final parts = numbers.split(RegExp('[$delimiter,\n]'));
//   return parts.map(int.parse).reduce((a, b) => a + b);
// }

/// seventh test case
// int add(String numbers) {
//   if (numbers.isEmpty) return 0;
//
//   String delimiter = ',';
//   if (numbers.startsWith('//')) {
//     final delimiterEndIndex = numbers.indexOf('\n');
//     delimiter = numbers.substring(2, delimiterEndIndex);
//     numbers = numbers.substring(delimiterEndIndex + 1);
//   }
//
//   final numbersList = numbers
//       .split(RegExp('[$delimiter,\n]'))
//       .map(int.parse)
//       .toList();
//
//   final negatives = numbersList.where((n) => n < 0).toList();
//   if (negatives.isNotEmpty) {
//     throw Exception('negative numbers not allowed ${negatives.join(',')}');
//   }
//
//   return numbersList.reduce((a, b) => a + b);
// }
// }

/// A String Calculator following the Incubyte TDD Kata.
///
/// Supports:
/// - Empty string (returns 0)
/// - Single number
/// - Multiple numbers separated by comma or newline
/// - Custom delimiter syntax (//<delimiter>\n)
/// - Throws exception for negative numbers listing all of them
class StringCalculator {
  int add(String input) {
    if (input.isEmpty) return 0;

    final parsedInput = _parseInput(input);
    final numbers = _splitNumbers(parsedInput.numbers, parsedInput.delimiter);

    _checkForNegatives(numbers);

    return numbers.reduce((a, b) => a + b);
  }

  /// Parses the input and extracts delimiter + actual numbers string
  _ParsedInput _parseInput(String input) {
    if (!input.startsWith('//')) {
      return _ParsedInput(delimiter: ',', numbers: input);
    }

    final delimiterEndIndex = input.indexOf('\n');
    final delimiter = input.substring(2, delimiterEndIndex);
    final numbers = input.substring(delimiterEndIndex + 1);

    return _ParsedInput(delimiter: delimiter, numbers: numbers);
  }

  /// Splits the numbers string using comma, newline or custom delimiter
  List<int> _splitNumbers(String numbers, String delimiter) {
    return numbers
        .split(RegExp('[$delimiter,\n]'))
        .map(int.parse)
        .toList();
  }

  /// Validates and throws exception if negative numbers exist
  void _checkForNegatives(List<int> numbers) {
    final negatives = numbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negatives.join(',')}',
      );
    }
  }
}

/// Simple value object to hold parsed input
class _ParsedInput {
  final String delimiter;
  final String numbers;

  const _ParsedInput({
    required this.delimiter,
    required this.numbers,
  });
}

