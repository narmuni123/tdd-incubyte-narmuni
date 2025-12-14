class StringCalculator {
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
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',';
    if (numbers.startsWith('//')) {
      final delimiterEndIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterEndIndex);
      numbers = numbers.substring(delimiterEndIndex + 1);
    }

    final numbersList = numbers
        .split(RegExp('[$delimiter,\n]'))
        .map(int.parse)
        .toList();

    final negatives = numbersList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }

    return numbersList.reduce((a, b) => a + b);
  }
}
