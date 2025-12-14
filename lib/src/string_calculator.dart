class StringCalculator {

  /// first test case
  // int add(String numbers) {
  //   return 0;
  // }


  /// second test case && third test case
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    final parts = numbers.split(',');
    if (parts.length == 1) return int.parse(numbers);
    return parts.map(int.parse).reduce((a, b) => a + b);
  }

}
